import React, { useCallback } from 'react'
import {
  View,
  FlatList,
  Platform,
  StatusBar,
  ActivityIndicator,
} from 'react-native'
import { useProviderHome } from '../providers'
import {
  List,
  Appbar,
  useTheme,
  Provider as PaperProvider
} from 'react-native-paper'
import { Modalize } from 'react-native-modalize'
import DetailUser from './components/detailUser'

const { Item, Icon } = List

const App = () => {
  const { data, modalRef, loading, dataUser, detailUser } = useProviderHome()

  const { colors } = useTheme()

  const renderItem = useCallback(
    ({ item }) => (
      <Item
        title={item?.name}
        description={item?.email}
        left={({ color }) => <Icon color={color} icon="account" />}
        right={({ color }) => <Icon color={color} icon="chevron-down" />}
        onPress={() => detailUser(item)}
      />
    ),
    [data],
  )

  return (
    <PaperProvider>
      <View style={{ flex: 1 }}>
        <StatusBar backgroundColor={colors.primary} barStyle='light-content' />
        <Appbar.Header>
          <Appbar.Content title="Test AntPack" />
        </Appbar.Header>
        {
          loading
            ? (
              <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
                <ActivityIndicator
                  color={colors.primary}
                  size={Platform.select({
                    ios: 'large',
                    android: 30
                  })}
                />
              </View>
            )
            : (
              <FlatList
                data={data}
                keyExtractor={item => item.id}
                renderItem={renderItem}
              />
            )
        }
        <Modalize
          ref={modalRef}
          adjustToContentHeight
        >
          <DetailUser dataUser={dataUser} />
        </Modalize>
      </View>
    </PaperProvider>
  )
}

export default App
