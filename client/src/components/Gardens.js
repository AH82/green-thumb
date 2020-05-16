import React from 'react';
import userGardenData from '../hooks/useGardenData';
import GardenDetails from './GardenDetails';


export default function Garden(props) {

  const { state } = userGardenData();

  const gardens = state.gardens;

  function findUserGarden(id, gardens) {

    return gardens.filter(garden => garden.user_id === id);

  }

  const userGarden = (findUserGarden(3, gardens));

  const mapUserGardens = userGarden.map(garden =>

    <GardenDetails
      key={garden.id}
      id={garden.id}
      title={garden.title}
      location={garden.location}
    />
  )

  return (
    <ul>
      {mapUserGardens}
    </ul>
  )
}