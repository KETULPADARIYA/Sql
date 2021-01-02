tableString = """drink_name main amount1 second amount2 directions
Blackthorn tonic water 1.5 pineapple juice 1 stir with ice, strain into cocktail glass with lemon twist
Blue Moon soda 1.5 blueberry juice .75 stir with ice, strain into cocktail glass with lemon twist
Oh My Gosh peach nectar 1 pineapple juice 1 stir with ice, strain into shot glass
Lime Fizz Sprite 1.5 lime juice .75 stir with ice, strain into cocktail glass
Kiss on the Lips cherry juice 2 apricot nectar 7 serve over ice with straw
Hot Gold peach nectar 3 orange juice 6 pour hot orange juice in mug and add peach nectar
Lone Tree soda 1.5 cherry juice .75 stir with ice, strain into cocktail glass
Greyhound soda 1.5 grapefruit juice 5 serve over ice, stir well
Indian Summer apple juice 2 hot tea 6 add juice to mug and top off with hot tea
Bull Frog iced tea 1.5 lemonade 5 serve over ice with lime slice
Soda And It soda 2 grape juice 1 shake in cocktail glass, no ice""".split("\n")

def get_drink_names(words):
    att = ""
    words_ = words[:]
    for word_index,word in enumerate(words):
        if word.istitle():
            word =  f" {word}" if att else word
            att += word

            del words_[word_index]
        else:
            break
    return att,words_

def get_main(words):
    att = ""
    words_ = words[:]
    for word_index, word in enumerate(words):
        if word.isalpha():
            word = f" {word}" if att else word
            att += word

            del words_[word_index]
        else:
            break
    return att, words_






b = tableString[1:]
for raw in b:
    words = raw.split()
    print(words)
    f,words = get_drink_names(words)

    print(f,words)
    print(get_main(words))
    print()