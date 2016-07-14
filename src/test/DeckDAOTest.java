package test;

import java.util.*;

import dao.*;
import vo.*;

public class DeckDAOTest {

	public static void main(String[] args) {


		//DAOのインスタンスを生成
		DeckDAO dDAO = new DeckDAO();
		//デッキ名を引数に検索結果を受け取る
		ArrayList<DeckVO> deckList = dDAO.selectDeck("ブルーアイズ");


		System.out.println(deckList);



		for(int i=0; i<deckList.size(); i++){
			DeckVO deck = deckList.get(i);
			System.out.print("<tr>"+deck.getDeckName()+"</tr>");
		}

	}

}
