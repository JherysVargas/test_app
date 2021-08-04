import axios from 'axios';

const URL_API = 'https://jsonplaceholder.typicode.com/users';

export const useRepositoryHome = () => {
  const getDataRepository = async () => {
    const response = await axios.get(URL_API);

    if (response.status === 200) {
      return response.data;
    }

    [];
  };

  return {
    getDataRepository,
  };
};
