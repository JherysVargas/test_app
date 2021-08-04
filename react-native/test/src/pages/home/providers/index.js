import { useEffect, useState, useRef } from 'react'
import { useRepositoryHome } from '../repository'

export const useProviderHome = () => {
  const modalRef = useRef(null)
  const [data, setData] = useState([])
  const [loading, setLoadin] = useState(true)
  const [dataUser, setDataUser] = useState({})

  const { getDataRepository } = useRepositoryHome()

  useEffect(() => {
    getData()
  }, [])

  const getData = async () => {
    const response = await getDataRepository()
    setData(response)
    setLoadin(false)
  }

  const detailUser = (user) => {
    setDataUser(user)
    modalRef.current.open()
  }

  return {
    data,
    loading,
    dataUser,
    modalRef,
    detailUser
  }
}
