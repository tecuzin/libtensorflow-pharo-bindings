converting
asArray
|answer|
answer := Array new: self size.
self withIndexDo: [ :each :index | answer at: index put: (TF_Operation fromHandle: each) ].
^answer