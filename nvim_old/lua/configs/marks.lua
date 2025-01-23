local status_ok, marks = pcall(require, "marks")
if not status_ok then
  return
end

marks.setup({
  -- whether to map keybinds or not. default true
  default_mappings = true,
  -- which builtin marks to show. default {}
  builtin_marks = { ".", "<", ">", "^" },
  -- whether movements cycle back to the beginning/end of buffer. default true
  cyclic = true,
  -- whether the shada file is updated after modifying uppercase marks. default false
  force_write_shada = false,
  -- how often (in ms) to redraw signs/recompute mark positions.
  -- higher values will have better performance but may cause visual lag,
  -- while lower values may cause performance penalties. default 150.
  refresh_interval = 250,
  -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
  -- marks, and bookmarks.
  -- can be either a table with all/none of the keys, or a single number, in which case
  -- the priority applies to all marks.
  -- default 10.
  sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
  -- disables mark tracking for specific filetypes. default {}
  excluded_filetypes = {},
  -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
  -- sign/virttext. Bookmarks can be used to group together positions and quickly move
  -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
  -- default virt_text is "".
  mappings = {
    set_bookmark0 = "ma",
    set_bookmark1 = "ms",
    set_bookmark2 = "md",
    set_bookmark3 = "mf",
    set_bookmark4 = "mg",
    set_bookmark5 = "mq",
    set_bookmark6 = "mw",
    set_bookmark7 = "me",
    set_bookmark8 = "mr",
    set_bookmark9 = "mt",
    delete_bookmark0 = "mda",
    delete_bookmark1 = "mds",
    delete_bookmark2 = "mdd",
    delete_bookmark3 = "mdf",
    delete_bookmark4 = "mdg",
    delete_bookmark5 = "mdq",
    delete_bookmark6 = "mdw",
    delete_bookmark7 = "mde",
    delete_bookmark8 = "mdr",
    delete_bookmark9 = "mdt",
    next_bookmark0 = "'a",
    next_bookmark1 = "'s",
    next_bookmark2 = "'d",
    next_bookmark3 = "'f",
    next_bookmark4 = "'g",
    next_bookmark5 = "'q",
    next_bookmark6 = "'w",
    next_bookmark7 = "'e",
    next_bookmark8 = "'r",
    next_bookmark9 = "'t",
    prev_bookmark0 = "'A",
    prev_bookmark1 = "'S",
    prev_bookmark2 = "'D",
    prev_bookmark3 = "'F",
    prev_bookmark4 = "'G",
    prev_bookmark5 = "'Q",
    prev_bookmark6 = "'W",
    prev_bookmark7 = "'E",
    prev_bookmark8 = "'R",
    prev_bookmark9 = "'T",
  },
  bookmark_0 = {
    sign = "a",
    annotate = false,
  },
  bookmark_1 = {
    sign = "s",
    annotate = false,
  },
  bookmark_2 = {
    sign = "d",
    annotate = false,
  },
  bookmark_3 = {
    sign = "f",
    annotate = false,
  },
  bookmark_4 = {
    sign = "g",
    annotate = false,
  },
  bookmark_5 = {
    sign = "q",
    annotate = false,
  },
  bookmark_6 = {
    sign = "w",
    annotate = false,
  },
  bookmark_7 = {
    sign = "e",
    annotate = false,
  },
  bookmark_8 = {
    sign = "r",
    annotate = false,
  },
  bookmark_9 = {
    sign = "t",
    annotate = false,
  },
})
