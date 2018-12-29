import React from 'react'
import { Draggable } from 'react-beautiful-dnd';
import AccessTime from './AccessTime'
import { DurTime, Entry, Details, Duration } from './StyledElelements.jsx';

const Break = (props) =>
{
  const { lecture, index } = props;
  return (
    <Draggable draggableId={lecture.id} index={index}>
    {(provided, snapshot) => (
      <Entry 
      ref={provided.innerRef} 
      {...provided.dragHandleProps}
      {...provided.draggableProps}
      >
      <Duration> 
        <DurTime> {lecture.duration} </DurTime>
      </Duration>
      <Details> Break </Details>
      </Entry>
    )}
    </Draggable>
  )
}

export default Break;
