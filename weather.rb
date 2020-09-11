# encoding: utf-8

# При запуске программы можно передать два аргумента: температуру в градусах
# Цельсия и индекс времени года (0 - весна, 1 - лето, 2 - осень, 3 - зима).

temperature = ARGV[0]

if temperature == nil

  # Если мы используем аргументы из командной строки, то
  # нам надо вызывать не просто gets, а STDIN.gets (особенность языка Ruby).
  puts 'Какая сейчас температура?'
  temperature = STDIN.gets.to_i
else
  temperature = temperature.to_i
end

season = ARGV[1]

if season == nil
  puts 'Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)'
  season = STDIN.gets.to_i
else
  season = season.to_i
end

if season == 1
  # Летом свой диапазон температур
  if temperature >= 15 && temperature <= 35
    puts 'Скорее идите в парк, соловьи поют!'
  else
    puts 'Увы, даже летом для соловьев сейчас неподходящие условия'
  end
else
  # Любое другое время года
  if temperature >= 22 && temperature <= 30
    puts 'Скорее в парк! Там поют соловьи!'
  else
    puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
  end
end
