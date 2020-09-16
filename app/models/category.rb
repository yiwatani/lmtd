class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: 'ケトジェニック'}, {id: 2, name: 'ローファット'}, {id: 3, name: 'コンビニで買えるダイエット食品'},
    {id: 4, name: 'その他'}
  ]
end