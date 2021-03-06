package com.whenwhere.team.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.whenwhere.team.vo.TeamChatVO;
import com.whenwhere.team.vo.TeamVO;

public interface TeamDAO {
	
	public int makeTeam(Map<String, Object> map);
	public List<TeamVO> getTeamList(String nickName);
	public List<String> getTeamUserList(@Param("nickname") String nickname, @Param("teamNum") int teamNum);
	public List<String> getTeamUserList(@Param("teamNum") int teamNum);
	public List<TeamVO> getApplyTeamUserList(String tNo);
	public int applyUserDelete(Map<String, Object> map);
	public int applyUser(Map<String, Object> map);
	public List<TeamChatVO> getchatTeam(int teamNum);
	public int sendMsg(@Param("teamNum") int teamNum,@Param("nickName") String nickName,@Param("msg") String msg);
	public TeamVO getTeamInfo(int teamNum);
	public List<TeamChatVO> chatTeamAfterNum(@Param("teamNum") int teamNum, @Param("lastMsgNo") int lastMsgNo);
	public int joinTeam(@Param("teamNum") int teamNum, @Param("nickname") String nickname);
}
