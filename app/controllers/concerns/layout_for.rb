module LayourFor
  def layout_for_requester
    return 'users' if user_signed_in?
    'visitors'
  end
end
