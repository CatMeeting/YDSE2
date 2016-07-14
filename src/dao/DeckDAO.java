package dao;

import java.sql.*;
import java.util.*;

import vo.*;

public class DeckDAO {



	public ArrayList<DeckVO> selectDeck(String deckName){
		ArrayList<DeckVO> deck = new ArrayList<DeckVO>();

		//DBに接続するためのインスタンス生成
		DBHelper dbh = new DBHelper();
		try{
			//SQL文の実行
			PreparedStatement pstmt = dbh.open().prepareStatement("SELECT * FROM deck WHERE deck_name LIKE ?");
			pstmt.setString(1, "%"+deckName+"%");
			ResultSet rs = pstmt.executeQuery();
			//検索結果を格納
			while(rs.next()){
				DeckVO deckVO = new DeckVO(rs.getInt("deck_id"), rs.getString("deck_name"));
				deck.add(deckVO);
			}

		}catch (Exception e){
			//エラーの場合
			return null;
		}finally {		//最後にDBから切断する
			try{
				dbh.close();
			}catch(Exception e){
				return null;
			}
		}
		//検索結果を返す
		return deck;
	}
}
