import React, { memo } from 'react'
import { View } from 'react-native'
import { List } from 'react-native-paper'

const { Item, Icon } = List

const DetailUser = ({ dataUser }) => {

  return (
    <View>
      <Item
        title={dataUser?.name}
        description={dataUser?.email}
        left={({ color }) => <Icon color={color} icon="account" />}
      />
      <Item
        title='City'
        description={dataUser?.address?.city || ''}
        left={({ color }) => <Icon color={color} icon="city" />}
      />
      <Item
        title='Company'
        description={dataUser?.company?.name || ''}
        left={({ color }) => <Icon color={color} icon="home-city" />}
      />
      <Item
        title='Cellphone'
        description={dataUser?.phone || ''}
        left={({ color }) => <Icon color={color} icon="phone" />}
      />
    </View>
  )
}

export default memo(DetailUser)
