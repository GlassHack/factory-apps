.class public final Lcom/google/common/base/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/StringUtil$CharEscaperBuilder;,
        Lcom/google/common/base/StringUtil$CharEscaper;,
        Lcom/google/common/base/StringUtil$CodePointSet;,
        Lcom/google/common/base/StringUtil$JsEscapingMode;
    }
.end annotation


# static fields
.field private static final CHARACTER_REFERENCE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CJK_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_STRINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final FANCY_DOUBLE_QUOTE:Lcom/google/common/base/CharMatcher;

.field private static final FANCY_SINGLE_QUOTE:Lcom/google/common/base/CharMatcher;

.field private static final HEX_LETTER:Lcom/google/common/base/CharMatcher;

.field private static final HTML_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final JSON_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

.field private static final JSON_OR_JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

.field private static final JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

.field private static final LT_GT_ESCAPE:Lcom/google/common/base/StringUtil$CharEscaper;

.field private static final NEWLINE_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final TO_WORDS:Lcom/google/common/base/Splitter;

.field private static final hexChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xad

    const/16 v8, 0x3e

    const/16 v7, 0x3c

    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 99
    invoke-static {v6}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->NEWLINE_SPLITTER:Lcom/google/common/base/Splitter;

    .line 154
    invoke-static {}, Lcom/google/common/base/CharMatcher;->breakingWhitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->TO_WORDS:Lcom/google/common/base/Splitter;

    .line 266
    const-string v2, "\u0091\u0092\u2018\u2019"

    .line 267
    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/google/common/base/CharMatcher;

    .line 268
    const-string v2, "\u0093\u0094\u201c\u201d"

    .line 269
    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/google/common/base/CharMatcher;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0xfc

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 475
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Character;>;"
    const-string v2, "&nbsp"

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v2, "&iexcl"

    const/16 v3, 0xa1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v2, "&cent"

    const/16 v3, 0xa2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v2, "&pound"

    const/16 v3, 0xa3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v2, "&curren"

    const/16 v3, 0xa4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v2, "&yen"

    const/16 v3, 0xa5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v2, "&brvbar"

    const/16 v3, 0xa6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v2, "&sect"

    const/16 v3, 0xa7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v2, "&uml"

    const/16 v3, 0xa8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v2, "&copy"

    const/16 v3, 0xa9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v2, "&ordf"

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v2, "&laquo"

    const/16 v3, 0xab

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v2, "&not"

    const/16 v3, 0xac

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v2, "&shy"

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v2, "&reg"

    const/16 v3, 0xae

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v2, "&macr"

    const/16 v3, 0xaf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v2, "&deg"

    const/16 v3, 0xb0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v2, "&plusmn"

    const/16 v3, 0xb1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v2, "&sup2"

    const/16 v3, 0xb2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v2, "&sup3"

    const/16 v3, 0xb3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v2, "&acute"

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v2, "&micro"

    const/16 v3, 0xb5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v2, "&para"

    const/16 v3, 0xb6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v2, "&middot"

    const/16 v3, 0xb7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v2, "&cedil"

    const/16 v3, 0xb8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v2, "&sup1"

    const/16 v3, 0xb9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v2, "&ordm"

    const/16 v3, 0xba

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v2, "&raquo"

    const/16 v3, 0xbb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v2, "&frac14"

    const/16 v3, 0xbc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v2, "&frac12"

    const/16 v3, 0xbd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v2, "&frac34"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v2, "&iquest"

    const/16 v3, 0xbf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v2, "&Agrave"

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v2, "&Aacute"

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v2, "&Acirc"

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v2, "&Atilde"

    const/16 v3, 0xc3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v2, "&Auml"

    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v2, "&Aring"

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v2, "&AElig"

    const/16 v3, 0xc6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v2, "&Ccedil"

    const/16 v3, 0xc7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v2, "&Egrave"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v2, "&Eacute"

    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v2, "&Ecirc"

    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v2, "&Euml"

    const/16 v3, 0xcb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v2, "&Igrave"

    const/16 v3, 0xcc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v2, "&Iacute"

    const/16 v3, 0xcd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v2, "&Icirc"

    const/16 v3, 0xce

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v2, "&Iuml"

    const/16 v3, 0xcf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v2, "&ETH"

    const/16 v3, 0xd0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v2, "&Ntilde"

    const/16 v3, 0xd1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v2, "&Ograve"

    const/16 v3, 0xd2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v2, "&Oacute"

    const/16 v3, 0xd3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v2, "&Ocirc"

    const/16 v3, 0xd4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v2, "&Otilde"

    const/16 v3, 0xd5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v2, "&Ouml"

    const/16 v3, 0xd6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v2, "&times"

    const/16 v3, 0xd7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v2, "&Oslash"

    const/16 v3, 0xd8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v2, "&Ugrave"

    const/16 v3, 0xd9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v2, "&Uacute"

    const/16 v3, 0xda

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v2, "&Ucirc"

    const/16 v3, 0xdb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v2, "&Uuml"

    const/16 v3, 0xdc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v2, "&Yacute"

    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v2, "&THORN"

    const/16 v3, 0xde

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v2, "&szlig"

    const/16 v3, 0xdf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v2, "&agrave"

    const/16 v3, 0xe0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v2, "&aacute"

    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v2, "&acirc"

    const/16 v3, 0xe2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v2, "&atilde"

    const/16 v3, 0xe3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v2, "&auml"

    const/16 v3, 0xe4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v2, "&aring"

    const/16 v3, 0xe5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v2, "&aelig"

    const/16 v3, 0xe6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v2, "&ccedil"

    const/16 v3, 0xe7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v2, "&egrave"

    const/16 v3, 0xe8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v2, "&eacute"

    const/16 v3, 0xe9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v2, "&ecirc"

    const/16 v3, 0xea

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v2, "&euml"

    const/16 v3, 0xeb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v2, "&igrave"

    const/16 v3, 0xec

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v2, "&iacute"

    const/16 v3, 0xed

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v2, "&icirc"

    const/16 v3, 0xee

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v2, "&iuml"

    const/16 v3, 0xef

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v2, "&eth"

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v2, "&ntilde"

    const/16 v3, 0xf1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v2, "&ograve"

    const/16 v3, 0xf2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v2, "&oacute"

    const/16 v3, 0xf3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v2, "&ocirc"

    const/16 v3, 0xf4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v2, "&otilde"

    const/16 v3, 0xf5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v2, "&ouml"

    const/16 v3, 0xf6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v2, "&divide"

    const/16 v3, 0xf7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v2, "&oslash"

    const/16 v3, 0xf8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v2, "&ugrave"

    const/16 v3, 0xf9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v2, "&uacute"

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v2, "&ucirc"

    const/16 v3, 0xfb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v2, "&uuml"

    const/16 v3, 0xfc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v2, "&yacute"

    const/16 v3, 0xfd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v2, "&thorn"

    const/16 v3, 0xfe

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v2, "&yuml"

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v2, "&fnof"

    const/16 v3, 0x192

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v2, "&Alpha"

    const/16 v3, 0x391

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v2, "&Beta"

    const/16 v3, 0x392

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v2, "&Gamma"

    const/16 v3, 0x393

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v2, "&Delta"

    const/16 v3, 0x394

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v2, "&Epsilon"

    const/16 v3, 0x395

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v2, "&Zeta"

    const/16 v3, 0x396

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v2, "&Eta"

    const/16 v3, 0x397

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v2, "&Theta"

    const/16 v3, 0x398

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v2, "&Iota"

    const/16 v3, 0x399

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v2, "&Kappa"

    const/16 v3, 0x39a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v2, "&Lambda"

    const/16 v3, 0x39b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v2, "&Mu"

    const/16 v3, 0x39c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v2, "&Nu"

    const/16 v3, 0x39d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v2, "&Xi"

    const/16 v3, 0x39e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v2, "&Omicron"

    const/16 v3, 0x39f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v2, "&Pi"

    const/16 v3, 0x3a0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v2, "&Rho"

    const/16 v3, 0x3a1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v2, "&Sigma"

    const/16 v3, 0x3a3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v2, "&Tau"

    const/16 v3, 0x3a4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v2, "&Upsilon"

    const/16 v3, 0x3a5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v2, "&Phi"

    const/16 v3, 0x3a6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v2, "&Chi"

    const/16 v3, 0x3a7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v2, "&Psi"

    const/16 v3, 0x3a8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v2, "&Omega"

    const/16 v3, 0x3a9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v2, "&alpha"

    const/16 v3, 0x3b1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v2, "&beta"

    const/16 v3, 0x3b2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v2, "&gamma"

    const/16 v3, 0x3b3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v2, "&delta"

    const/16 v3, 0x3b4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v2, "&epsilon"

    const/16 v3, 0x3b5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v2, "&zeta"

    const/16 v3, 0x3b6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v2, "&eta"

    const/16 v3, 0x3b7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v2, "&theta"

    const/16 v3, 0x3b8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v2, "&iota"

    const/16 v3, 0x3b9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v2, "&kappa"

    const/16 v3, 0x3ba

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v2, "&lambda"

    const/16 v3, 0x3bb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v2, "&mu"

    const/16 v3, 0x3bc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v2, "&nu"

    const/16 v3, 0x3bd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v2, "&xi"

    const/16 v3, 0x3be

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v2, "&omicron"

    const/16 v3, 0x3bf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v2, "&pi"

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v2, "&rho"

    const/16 v3, 0x3c1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v2, "&sigmaf"

    const/16 v3, 0x3c2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v2, "&sigma"

    const/16 v3, 0x3c3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v2, "&tau"

    const/16 v3, 0x3c4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v2, "&upsilon"

    const/16 v3, 0x3c5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v2, "&phi"

    const/16 v3, 0x3c6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v2, "&chi"

    const/16 v3, 0x3c7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v2, "&psi"

    const/16 v3, 0x3c8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v2, "&omega"

    const/16 v3, 0x3c9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v2, "&thetasym"

    const/16 v3, 0x3d1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v2, "&upsih"

    const/16 v3, 0x3d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v2, "&piv"

    const/16 v3, 0x3d6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v2, "&bull"

    const/16 v3, 0x2022

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v2, "&hellip"

    const/16 v3, 0x2026

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v2, "&prime"

    const/16 v3, 0x2032

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v2, "&Prime"

    const/16 v3, 0x2033

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v2, "&oline"

    const/16 v3, 0x203e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v2, "&frasl"

    const/16 v3, 0x2044

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v2, "&weierp"

    const/16 v3, 0x2118

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v2, "&image"

    const/16 v3, 0x2111

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v2, "&real"

    const/16 v3, 0x211c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v2, "&trade"

    const/16 v3, 0x2122

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v2, "&alefsym"

    const/16 v3, 0x2135

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v2, "&larr"

    const/16 v3, 0x2190

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v2, "&uarr"

    const/16 v3, 0x2191

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v2, "&rarr"

    const/16 v3, 0x2192

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v2, "&darr"

    const/16 v3, 0x2193

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v2, "&harr"

    const/16 v3, 0x2194

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v2, "&crarr"

    const/16 v3, 0x21b5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v2, "&lArr"

    const/16 v3, 0x21d0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v2, "&uArr"

    const/16 v3, 0x21d1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v2, "&rArr"

    const/16 v3, 0x21d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v2, "&dArr"

    const/16 v3, 0x21d3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v2, "&hArr"

    const/16 v3, 0x21d4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v2, "&forall"

    const/16 v3, 0x2200

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v2, "&part"

    const/16 v3, 0x2202

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v2, "&exist"

    const/16 v3, 0x2203

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v2, "&empty"

    const/16 v3, 0x2205

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v2, "&nabla"

    const/16 v3, 0x2207

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v2, "&isin"

    const/16 v3, 0x2208

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v2, "&notin"

    const/16 v3, 0x2209

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v2, "&ni"

    const/16 v3, 0x220b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v2, "&prod"

    const/16 v3, 0x220f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v2, "&sum"

    const/16 v3, 0x2211

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v2, "&minus"

    const/16 v3, 0x2212

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v2, "&lowast"

    const/16 v3, 0x2217

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v2, "&radic"

    const/16 v3, 0x221a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v2, "&prop"

    const/16 v3, 0x221d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v2, "&infin"

    const/16 v3, 0x221e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v2, "&ang"

    const/16 v3, 0x2220

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v2, "&and"

    const/16 v3, 0x2227

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v2, "&or"

    const/16 v3, 0x2228

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v2, "&cap"

    const/16 v3, 0x2229

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v2, "&cup"

    const/16 v3, 0x222a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string v2, "&int"

    const/16 v3, 0x222b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string v2, "&there4"

    const/16 v3, 0x2234

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string v2, "&sim"

    const/16 v3, 0x223c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string v2, "&cong"

    const/16 v3, 0x2245

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v2, "&asymp"

    const/16 v3, 0x2248

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v2, "&ne"

    const/16 v3, 0x2260

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v2, "&equiv"

    const/16 v3, 0x2261

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v2, "&le"

    const/16 v3, 0x2264

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v2, "&ge"

    const/16 v3, 0x2265

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v2, "&sub"

    const/16 v3, 0x2282

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v2, "&sup"

    const/16 v3, 0x2283

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v2, "&nsub"

    const/16 v3, 0x2284

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v2, "&sube"

    const/16 v3, 0x2286

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v2, "&supe"

    const/16 v3, 0x2287

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v2, "&oplus"

    const/16 v3, 0x2295

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v2, "&otimes"

    const/16 v3, 0x2297

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v2, "&perp"

    const/16 v3, 0x22a5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v2, "&sdot"

    const/16 v3, 0x22c5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v2, "&lceil"

    const/16 v3, 0x2308

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v2, "&rceil"

    const/16 v3, 0x2309

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v2, "&lfloor"

    const/16 v3, 0x230a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v2, "&rfloor"

    const/16 v3, 0x230b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v2, "&lang"

    const/16 v3, 0x2329

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v2, "&rang"

    const/16 v3, 0x232a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v2, "&loz"

    const/16 v3, 0x25ca

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v2, "&spades"

    const/16 v3, 0x2660

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v2, "&clubs"

    const/16 v3, 0x2663

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v2, "&hearts"

    const/16 v3, 0x2665

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v2, "&diams"

    const/16 v3, 0x2666

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v2, "&quot"

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v2, "&amp"

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string v2, "&lt"

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string v2, "&gt"

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v2, "&apos"

    const/16 v3, 0x27

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v2, "&OElig"

    const/16 v3, 0x152

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string v2, "&oelig"

    const/16 v3, 0x153

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v2, "&Scaron"

    const/16 v3, 0x160

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v2, "&scaron"

    const/16 v3, 0x161

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string v2, "&Yuml"

    const/16 v3, 0x178

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v2, "&circ"

    const/16 v3, 0x2c6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v2, "&tilde"

    const/16 v3, 0x2dc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string v2, "&ensp"

    const/16 v3, 0x2002

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v2, "&emsp"

    const/16 v3, 0x2003

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v2, "&thinsp"

    const/16 v3, 0x2009

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v2, "&zwnj"

    const/16 v3, 0x200c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v2, "&zwj"

    const/16 v3, 0x200d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v2, "&lrm"

    const/16 v3, 0x200e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v2, "&rlm"

    const/16 v3, 0x200f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v2, "&ndash"

    const/16 v3, 0x2013

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v2, "&mdash"

    const/16 v3, 0x2014

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v2, "&lsquo"

    const/16 v3, 0x2018

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v2, "&rsquo"

    const/16 v3, 0x2019

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v2, "&sbquo"

    const/16 v3, 0x201a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v2, "&ldquo"

    const/16 v3, 0x201c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v2, "&rdquo"

    const/16 v3, 0x201d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v2, "&bdquo"

    const/16 v3, 0x201e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v2, "&dagger"

    const/16 v3, 0x2020

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v2, "&Dagger"

    const/16 v3, 0x2021

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string v2, "&permil"

    const/16 v3, 0x2030

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string v2, "&lsaquo"

    const/16 v3, 0x2039

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v2, "&rsaquo"

    const/16 v3, 0x203a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v2, "&euro"

    const/16 v3, 0x20ac

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    .line 732
    const/16 v2, 0x41

    const/16 v3, 0x46

    .line 733
    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const/16 v3, 0x61

    const/16 v4, 0x66

    invoke-static {v3, v4}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->HEX_LETTER:Lcom/google/common/base/CharMatcher;

    .line 877
    new-instance v2, Lcom/google/common/base/StringUtil$CharEscaperBuilder;

    invoke-direct {v2}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;-><init>()V

    const-string v3, "&lt;"

    .line 878
    invoke-virtual {v2, v7, v3}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/common/base/StringUtil$CharEscaperBuilder;

    move-result-object v2

    const-string v3, "&gt;"

    .line 879
    invoke-virtual {v2, v8, v3}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/common/base/StringUtil$CharEscaperBuilder;

    move-result-object v2

    .line 880
    invoke-virtual {v2}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->toEscaper()Lcom/google/common/base/StringUtil$CharEscaper;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->LT_GT_ESCAPE:Lcom/google/common/base/StringUtil$CharEscaper;

    .line 882
    const-string v2, "</?[a-zA-Z][^>]*>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->HTML_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 1358
    const-string v2, "&#?[a-zA-Z0-9]{1,8};"

    .line 1359
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->CHARACTER_REFERENCE_PATTERN:Ljava/util/regex/Pattern;

    .line 1396
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1397
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1398
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1399
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1400
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1401
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1402
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1403
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1404
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1405
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1406
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1407
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1408
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1409
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1410
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1411
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1413
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1414
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1415
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1416
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1417
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1418
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    .line 1513
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    .line 1903
    new-instance v2, Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    invoke-direct {v2}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;-><init>()V

    .line 1907
    invoke-virtual {v2, v9}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x600

    const/16 v4, 0x603

    .line 1908
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x6dd

    .line 1909
    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x70f

    .line 1910
    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x17b4

    const/16 v4, 0x17b5

    .line 1911
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x200b

    const/16 v4, 0x200f

    .line 1912
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x202a

    const/16 v4, 0x202e

    .line 1913
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x2060

    const/16 v4, 0x2064

    .line 1914
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x206a

    const/16 v4, 0x206f

    .line 1915
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0xfeff

    .line 1916
    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0xfff9

    const v4, 0xfffb

    .line 1917
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0x1d173

    const v4, 0x1d17a

    .line 1918
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0xe0001

    .line 1919
    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0xe0020

    const v4, 0xe007f

    .line 1920
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    .line 1922
    invoke-virtual {v2, v5}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    .line 1923
    invoke-virtual {v2, v6}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0xd

    .line 1924
    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x2028

    const/16 v4, 0x2029

    .line 1925
    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x85

    .line 1926
    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "\'"

    .line 1927
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "\""

    .line 1928
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "&"

    .line 1929
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "<"

    .line 1930
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, ">"

    .line 1931
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "="

    .line 1932
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "\\"

    .line 1933
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    .line 1934
    invoke-virtual {v2}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->create()Lcom/google/common/base/StringUtil$CodePointSet;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    .line 1936
    new-instance v2, Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    invoke-direct {v2}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;-><init>()V

    const-string v3, "\""

    .line 1938
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "\\"

    .line 1939
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x1f

    .line 1940
    invoke-virtual {v2, v5, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    .line 1941
    invoke-virtual {v2}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->create()Lcom/google/common/base/StringUtil$CodePointSet;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->JSON_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    .line 1943
    sget-object v2, Lcom/google/common/base/StringUtil;->JSON_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    sget-object v3, Lcom/google/common/base/StringUtil;->JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet;->or(Lcom/google/common/base/StringUtil$CodePointSet;)Lcom/google/common/base/StringUtil$CodePointSet;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->JSON_OR_JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexJavaScriptRepresentation(CLjava/lang/Appendable;)V
    .locals 3
    .param p0, "ch"    # C
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    const-string v0, "\\x"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StringUtil;->hexChars:[C

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StringUtil;->hexChars:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1079
    return-void
.end method

.method private static appendUnicodeJavaScriptRepresentation(ILjava/lang/Appendable;)V
    .locals 4
    .param p0, "codePoint"    # I
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1090
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1095
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1096
    .local v0, "surrogates":[C
    const/4 v1, 0x0

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/google/common/base/StringUtil;->appendUnicodeJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 1097
    const/4 v1, 0x1

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/google/common/base/StringUtil;->appendUnicodeJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 1105
    .end local v0    # "surrogates":[C
    :goto_0
    return-void

    .line 1100
    :cond_0
    const-string v1, "\\u"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    ushr-int/lit8 v3, p0, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    .line 1101
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    ushr-int/lit8 v3, p0, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    .line 1102
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    ushr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    .line 1103
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    .line 1104
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1541
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1546
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1544
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1545
    .local v1, "first":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1546
    .local v0, "capitalized":C
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static containsCharRef(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1373
    sget-object v0, Lcom/google/common/base/StringUtil;->CHARACTER_REFERENCE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static convertEOLToLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 322
    .local v3, "res":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 323
    .local v4, "s":[C
    const/4 v1, 0x0

    .line 324
    .local v1, "from":I
    array-length v0, v4

    .line 325
    .local v0, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 326
    aget-char v5, v4, v2

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 327
    sub-int v5, v2, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget-char v5, v4, v5

    if-ne v5, v7, :cond_0

    .line 330
    add-int/lit8 v2, v2, 0x1

    .line 333
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .line 325
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_2
    if-nez v1, :cond_3

    .line 342
    .end local p0    # "input":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 341
    .restart local p0    # "input":Ljava/lang/String;
    :cond_3
    sub-int v5, v0, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static displayWidth(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1495
    const/16 v0, 0x4f9

    if-le p0, v0, :cond_8

    const/16 v0, 0x5be

    if-eq p0, v0, :cond_8

    const/16 v0, 0x5d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5ea

    if-le p0, v0, :cond_8

    :cond_0
    const/16 v0, 0x5f3

    if-eq p0, v0, :cond_8

    const/16 v0, 0x5f4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x600

    if-lt p0, v0, :cond_1

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_8

    :cond_1
    const/16 v0, 0x750

    if-lt p0, v0, :cond_2

    const/16 v0, 0x77f

    if-le p0, v0, :cond_8

    :cond_2
    const v0, 0xfb50

    if-lt p0, v0, :cond_3

    const v0, 0xfdff

    if-le p0, v0, :cond_8

    :cond_3
    const v0, 0xfe70

    if-lt p0, v0, :cond_4

    const v0, 0xfeff

    if-le p0, v0, :cond_8

    :cond_4
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_5

    const/16 v0, 0x20af

    if-le p0, v0, :cond_8

    :cond_5
    const/16 v0, 0x2100

    if-lt p0, v0, :cond_6

    const/16 v0, 0x213a

    if-le p0, v0, :cond_8

    :cond_6
    const/16 v0, 0xe00

    if-lt p0, v0, :cond_7

    const/16 v0, 0xe7f

    if-le p0, v0, :cond_8

    :cond_7
    const v0, 0xff61

    if-lt p0, v0, :cond_9

    const v0, 0xffdc

    if-gt p0, v0, :cond_9

    .line 1508
    :cond_8
    const/4 v0, 0x1

    .line 1510
    :goto_0
    return v0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static displayWidth(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1459
    const/4 v2, 0x0

    .line 1460
    .local v2, "width":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1461
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1462
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/StringUtil;->displayWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    :cond_0
    return v2
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 1574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1575
    .local v5, "len":I
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static escapeStringBody(Ljava/lang/CharSequence;ZLcom/google/common/base/StringUtil$JsEscapingMode;Ljava/lang/Appendable;)V
    .locals 7
    .param p0, "plainText"    # Ljava/lang/CharSequence;
    .param p1, "escapeToAscii"    # Z
    .param p2, "jsEscapingMode"    # Lcom/google/common/base/StringUtil$JsEscapingMode;
    .param p3, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 989
    const/4 v4, 0x0

    .line 990
    .local v4, "pos":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 991
    .local v3, "len":I
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 993
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 994
    .local v1, "codePoint":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 996
    .local v0, "charCount":I
    invoke-static {v1, p1, p2}, Lcom/google/common/base/StringUtil;->shouldEscapeChar(IZLcom/google/common/base/StringUtil$JsEscapingMode;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 992
    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    .line 1000
    :cond_0
    invoke-interface {p3, p0, v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1001
    add-int v4, v2, v0

    .line 1002
    sparse-switch v1, :sswitch_data_0

    .line 1034
    :cond_1
    const/16 v5, 0x100

    if-ge v1, v5, :cond_2

    sget-object v5, Lcom/google/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v5, :cond_4

    .line 1035
    :cond_2
    invoke-static {v1, p3}, Lcom/google/common/base/StringUtil;->appendUnicodeJavaScriptRepresentation(ILjava/lang/Appendable;)V

    goto :goto_1

    .line 1004
    :sswitch_0
    const-string v5, "\\b"

    invoke-interface {p3, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1007
    :sswitch_1
    const-string v5, "\\t"

    invoke-interface {p3, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1010
    :sswitch_2
    const-string v5, "\\n"

    invoke-interface {p3, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1013
    :sswitch_3
    const-string v5, "\\f"

    invoke-interface {p3, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1016
    :sswitch_4
    const-string v5, "\\r"

    invoke-interface {p3, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1019
    :sswitch_5
    const-string v5, "\\\\"

    invoke-interface {p3, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1023
    :sswitch_6
    sget-object v5, Lcom/google/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v5, :cond_3

    const/16 v5, 0x27

    if-ne v5, v1, :cond_3

    .line 1026
    int-to-char v5, v1

    invoke-interface {p3, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1028
    :cond_3
    sget-object v5, Lcom/google/common/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/google/common/base/StringUtil$JsEscapingMode;

    if-eq p2, v5, :cond_1

    .line 1029
    const/16 v5, 0x5c

    invoke-interface {p3, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v5

    int-to-char v6, v1

    invoke-interface {v5, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1038
    :cond_4
    int-to-char v5, v1

    invoke-static {v5, p3}, Lcom/google/common/base/StringUtil;->appendHexJavaScriptRepresentation(CLjava/lang/Appendable;)V

    goto :goto_1

    .line 1043
    .end local v0    # "charCount":I
    .end local v1    # "codePoint":I
    :cond_5
    invoke-interface {p3, p0, v4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1044
    return-void

    .line 1002
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x5c -> :sswitch_5
    .end sparse-switch
.end method

.method public static fixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/google/common/base/StringUtil;->NEWLINE_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v3, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "line":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 121
    .local v1, "lineArray":[Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/google/common/base/StringUtil;->fixedWidth([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static fixedWidth([Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "width"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "formattedLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 147
    .local v1, "line":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/google/common/base/StringUtil;->formatLineToFixedWidth(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static formatLineToFixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, p1, :cond_0

    .line 185
    .end local p0    # "line":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 164
    .restart local p0    # "line":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 167
    .local v1, "col":I
    sget-object v4, Lcom/google/common/base/StringUtil;->TO_WORDS:Lcom/google/common/base/Splitter;

    invoke-virtual {v4, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    .local v3, "word":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 182
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v2, v5, 0x1

    .line 173
    .local v2, "newCol":I
    if-gt v2, p1, :cond_2

    .line 174
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    move v1, v2

    goto :goto_2

    .line 177
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    .line 185
    .end local v2    # "newCol":I
    .end local v3    # "word":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static hexToBytes(Ljava/lang/CharSequence;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 299
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 300
    .local v0, "bytes":[B
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 314
    :cond_0
    return-object v0

    .line 303
    :cond_1
    aput-byte v5, v0, v5

    .line 304
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    rem-int/lit8 v3, v4, 0x2

    .line 305
    .local v3, "nibbleIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 306
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 307
    .local v1, "c":C
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_2

    .line 308
    shr-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/google/common/base/StringUtil;->hexValue(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 312
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_2
    shr-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v4

    invoke-static {v1}, Lcom/google/common/base/StringUtil;->hexValue(C)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_1
.end method

.method private static hexValue(C)I
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 374
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 375
    add-int/lit8 v0, p0, -0x30

    .line 379
    :goto_0
    return v0

    .line 376
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 377
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 378
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 379
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 381
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "char is not a hex char"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static indent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "iString"    # Ljava/lang/String;
    .param p1, "iIndentDepth"    # I

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v1, "spacer":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 198
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isCjk(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1430
    invoke-static {p0}, Lcom/google/common/base/StringUtil;->isCjk(I)Z

    move-result v0

    return v0
.end method

.method public static isCjk(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 1439
    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_0

    .line 1440
    const/4 v0, 0x0

    .line 1443
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isCjk(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1382
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1383
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/StringUtil;->isCjk(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1384
    const/4 v2, 0x1

    .line 1387
    :goto_1
    return v2

    .line 1382
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1387
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHex(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 368
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOctal(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 364
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaScriptEscape(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 920
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "escapeToAscii"    # Z

    .prologue
    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 954
    .local v1, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    sget-object v2, Lcom/google/common/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/google/common/base/StringUtil$JsEscapingMode;

    invoke-static {p0, p1, v2, v1}, Lcom/google/common/base/StringUtil;->escapeStringBody(Ljava/lang/CharSequence;ZLcom/google/common/base/StringUtil$JsEscapingMode;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 955
    :catch_0
    move-exception v0

    .line 957
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static javaScriptEscapeToAscii(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 930
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaScriptUnescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1114
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1116
    .local v0, "c":C
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_0

    .line 1117
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3, v2}, Lcom/google/common/base/StringUtil;->javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_0

    .line 1119
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v11, 0x8

    const/4 v1, 0x2

    .line 1135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt p1, v9, :cond_0

    .line 1136
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x2a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "End-of-string after escape character in ["

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1139
    :cond_0
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1140
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1208
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x32

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Unknown escape code ["

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1142
    :sswitch_0
    const/16 v9, 0xa

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1212
    .end local v3    # "i":I
    .restart local p1    # "i":I
    :goto_0
    return p1

    .line 1145
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_1
    const/16 v9, 0xd

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1146
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1148
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_2
    const/16 v9, 0x9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1149
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1151
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_3
    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1152
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1154
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_4
    const/16 v9, 0xc

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1155
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1160
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1161
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1170
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_6
    add-int/lit8 p1, v3, -0x1

    .line 1171
    .end local v3    # "i":I
    .restart local p1    # "i":I
    const/4 v6, 0x1

    .line 1172
    .local v6, "nOctalDigits":I
    const/16 v9, 0x34

    if-ge v0, v9, :cond_1

    const/4 v1, 0x3

    .line 1173
    .local v1, "digitLimit":I
    :cond_1
    :goto_1
    if-ge v6, v1, :cond_2

    add-int v9, p1, v6

    .line 1174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    add-int v9, p1, v6

    .line 1175
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1176
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1178
    :cond_2
    add-int v9, p1, v6

    invoke-virtual {p0, p1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1179
    add-int/2addr p1, v6

    .line 1180
    goto :goto_0

    .line 1184
    .end local v1    # "digitLimit":I
    .end local v6    # "nOctalDigits":I
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_7
    const/16 v9, 0x75

    if-ne v0, v9, :cond_3

    const/4 v5, 0x4

    .line 1186
    .local v5, "nHexDigits":I
    :goto_2
    add-int v9, v3, v5

    :try_start_0
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1199
    .local v2, "hexCode":Ljava/lang/String;
    const/16 v9, 0x10

    :try_start_1
    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 1204
    .local v8, "unicodeValue":I
    int-to-char v9, v8

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1205
    add-int p1, v3, v5

    .line 1206
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .end local v2    # "hexCode":Ljava/lang/String;
    .end local v5    # "nHexDigits":I
    .end local v8    # "unicodeValue":I
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :cond_3
    move v5, v1

    .line 1184
    goto :goto_2

    .line 1187
    .restart local v5    # "nHexDigits":I
    :catch_0
    move-exception v4

    .line 1188
    .local v4, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 1190
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x36

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Invalid unicode sequence ["

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1200
    .end local v4    # "ioobe":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "hexCode":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1201
    .local v7, "nfe":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x36

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Invalid unicode sequence ["

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1140
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x3e -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_7
        0x78 -> :sswitch_7
    .end sparse-switch
.end method

.method public static lastToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 1355
    invoke-static {p1}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->lastIndexIn(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static maskLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "maskChar"    # C
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 351
    if-gtz p1, :cond_0

    .line 360
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 354
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 357
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p0, p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static mustEscapeCharInJsString(I)Z
    .locals 1
    .param p0, "codepoint"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1811
    sget-object v0, Lcom/google/common/base/StringUtil;->JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    invoke-virtual {v0, p0}, Lcom/google/common/base/StringUtil$CodePointSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method static mustEscapeCharInJsonOrJsString(I)Z
    .locals 1
    .param p0, "codepoint"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1840
    sget-object v0, Lcom/google/common/base/StringUtil;->JSON_OR_JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    invoke-virtual {v0, p0}, Lcom/google/common/base/StringUtil$CodePointSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method static mustEscapeCharInJsonString(I)Z
    .locals 1
    .param p0, "codepoint"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1828
    sget-object v0, Lcom/google/common/base/StringUtil;->JSON_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    invoke-virtual {v0, p0}, Lcom/google/common/base/StringUtil$CodePointSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static parseDelimitedList(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 10
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1309
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "delim":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1314
    .local v2, "st":Ljava/util/StringTokenizer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .local v4, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 1316
    .local v1, "lastToken":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1330
    .local v5, "word":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1331
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1332
    .local v3, "tok":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1333
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1334
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1336
    const/4 v3, 0x0

    .line 1345
    :cond_0
    :goto_1
    move-object v1, v3

    .line 1346
    goto :goto_0

    .line 1339
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1340
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 1348
    .end local v3    # "tok":Ljava/lang/String;
    :cond_3
    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static replaceSmartQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 276
    sget-object v1, Lcom/google/common/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/google/common/base/CharMatcher;

    const/16 v2, 0x27

    invoke-virtual {v1, p0, v2}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "tmp":Ljava/lang/String;
    sget-object v1, Lcom/google/common/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/google/common/base/CharMatcher;

    const/16 v2, 0x22

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static shouldEscapeChar(IZLcom/google/common/base/StringUtil$JsEscapingMode;)Z
    .locals 1
    .param p0, "codePoint"    # I
    .param p1, "escapeToAscii"    # Z
    .param p2, "jsEscapingMode"    # Lcom/google/common/base/StringUtil$JsEscapingMode;

    .prologue
    .line 1052
    if-eqz p1, :cond_1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    .line 1053
    :cond_0
    const/4 v0, 0x1

    .line 1066
    :goto_0
    return v0

    .line 1061
    :cond_1
    sget-object v0, Lcom/google/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v0, :cond_2

    .line 1062
    invoke-static {p0}, Lcom/google/common/base/StringUtil;->mustEscapeCharInJsonOrJsString(I)Z

    move-result v0

    goto :goto_0

    .line 1066
    :cond_2
    invoke-static {p0}, Lcom/google/common/base/StringUtil;->mustEscapeCharInJsString(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static splitToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 8
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimEntry"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "delimKey"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "doStripEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1242
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1245
    .local v2, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1246
    :cond_0
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    :cond_1
    return-object v2

    .line 1250
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1251
    .local v1, "len":I
    invoke-static {p1}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1252
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1253
    .local v3, "pos":I
    if-lez v3, :cond_4

    .line 1254
    add-int v6, v3, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1255
    .local v4, "value":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 1256
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1258
    :cond_3
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1260
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1560
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "delimEntry"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "delimKey"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "doStripEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1282
    if-nez p0, :cond_0

    .line 1283
    const/4 v0, 0x0

    .line 1286
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/base/StringUtil;->splitToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 901
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 904
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/google/common/base/StringUtil;->HTML_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "stripped":Ljava/lang/String;
    sget-object v1, Lcom/google/common/base/StringUtil;->LT_GT_ESCAPE:Lcom/google/common/base/StringUtil$CharEscaper;

    invoke-virtual {v1, v0}, Lcom/google/common/base/StringUtil$CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripPrefixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 230
    invoke-static {p0, p1}, Lcom/google/common/base/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripSuffixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 260
    invoke-static {p0, p1}, Lcom/google/common/base/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toNullIfEmptyOrWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    invoke-static {p0}, Lcom/google/common/base/StringUtil;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static truncateAtMaxLength(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "maxLength"    # I
    .param p2, "addEllipsis"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1679
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 1685
    .end local p0    # "source":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1682
    .restart local p0    # "source":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 1683
    add-int/lit8 v0, p1, -0x3

    invoke-static {p0, v1, v0}, Lcom/google/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1685
    :cond_1
    invoke-static {p0, v1, p1}, Lcom/google/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static truncateIfNecessary(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "maxLength"    # I

    .prologue
    const/4 v6, 0x0

    .line 1633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, p1, :cond_1

    move-object v3, p0

    .line 1657
    :cond_0
    :goto_0
    return-object v3

    .line 1636
    :cond_1
    invoke-static {p0, v6, p1}, Lcom/google/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1638
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1641
    .local v3, "truncated":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, p1, :cond_0

    .line 1646
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1651
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 1652
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1653
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1654
    .local v2, "substr":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1651
    .end local v2    # "substr":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxbytes"    # I

    .prologue
    const/4 v5, 0x0

    .line 1596
    if-gez p1, :cond_0

    .line 1597
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1600
    :cond_0
    const/4 v0, 0x0

    .line 1601
    .local v0, "bytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1602
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1603
    .local v1, "c":C
    const/16 v4, 0x80

    if-ge v1, v4, :cond_2

    .line 1604
    add-int/lit8 v0, v0, 0x1

    .line 1615
    :goto_1
    if-le v0, p1, :cond_7

    .line 1616
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1619
    .end local v1    # "c":C
    .end local p0    # "str":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 1605
    .restart local v1    # "c":C
    .restart local p0    # "str":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x800

    if-ge v1, v4, :cond_3

    .line 1606
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1607
    :cond_3
    const v4, 0xd800

    if-lt v1, v4, :cond_4

    const v4, 0xdfff

    if-gt v1, v4, :cond_4

    .line 1609
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/high16 v6, 0x10000

    if-ge v4, v6, :cond_5

    .line 1610
    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 1612
    :cond_5
    add-int/lit8 v0, v0, 0x4

    .line 1613
    if-le v0, p1, :cond_6

    move v4, v5

    :goto_2
    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    .line 1601
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static unescapeCString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x5c

    .line 390
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    .line 463
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 395
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 397
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 398
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    .local v0, "c":C
    if-ne v0, v8, :cond_2

    if-ge v1, v3, :cond_2

    .line 400
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 401
    sparse-switch v0, :sswitch_data_0

    .line 437
    const/16 v6, 0x78

    if-ne v0, v6, :cond_3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 439
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->hexValue(C)I

    move-result v5

    .line 440
    .local v5, "v":I
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 441
    mul-int/lit8 v6, v5, 0x10

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/StringUtil;->hexValue(C)I

    move-result v7

    add-int v5, v6, v7

    move v1, v2

    .line 443
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    int-to-char v0, v5

    .line 461
    .end local v5    # "v":I
    :cond_2
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 462
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 403
    :sswitch_0
    const/4 v0, 0x7

    move v1, v2

    .line 404
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 406
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    const/16 v0, 0x8

    move v1, v2

    .line 407
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 409
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    const/16 v0, 0xc

    move v1, v2

    .line 410
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 412
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_3
    const/16 v0, 0xa

    move v1, v2

    .line 413
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 415
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_4
    const/16 v0, 0xd

    move v1, v2

    .line 416
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 418
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_5
    const/16 v0, 0x9

    move v1, v2

    .line 419
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 421
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_6
    const/16 v0, 0xb

    move v1, v2

    .line 422
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 424
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_7
    const/16 v0, 0x5c

    move v1, v2

    .line 425
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 427
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_8
    const/16 v0, 0x3f

    move v1, v2

    .line 428
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 430
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_9
    const/16 v0, 0x27

    move v1, v2

    .line 431
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 433
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_a
    const/16 v0, 0x22

    move v1, v2

    .line 434
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 444
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    invoke-static {v0}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 446
    add-int/lit8 v5, v0, -0x30

    .line 447
    .restart local v5    # "v":I
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 448
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int v5, v6, v7

    move v2, v1

    .line 450
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_4
    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 451
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int v5, v6, v7

    .line 453
    :goto_3
    int-to-char v0, v5

    .line 454
    goto :goto_2

    .line 456
    .end local v1    # "i":I
    .end local v5    # "v":I
    .restart local v2    # "i":I
    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 463
    .end local v0    # "c":C
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .restart local v0    # "c":C
    .restart local v5    # "v":I
    :cond_7
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x3f -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public static unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 24
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "emulateBrowsers"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 778
    const/16 v21, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 779
    .local v11, "index":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_0

    .line 873
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 785
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 786
    .local v5, "chars":[C
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v8, v0, [C

    .line 787
    .local v8, "escaped":[C
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v5, v0, v8, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    move/from16 v17, v11

    .line 792
    .local v17, "pos":I
    move v9, v11

    .local v9, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_11

    .line 793
    aget-char v21, v5, v9

    const/16 v22, 0x26

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 794
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "pos":I
    .local v18, "pos":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    aget-char v21, v5, v9

    aput-char v21, v8, v17

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    move/from16 v17, v18

    .line 795
    .end local v18    # "pos":I
    .restart local v17    # "pos":I
    goto :goto_1

    .line 799
    :cond_1
    add-int/lit8 v15, v9, 0x1

    .line 800
    .local v15, "j":I
    const/4 v14, 0x0

    .line 801
    .local v14, "isNumericEntity":Z
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_2

    aget-char v21, v5, v15

    const/16 v22, 0x23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 802
    add-int/lit8 v15, v15, 0x1

    .line 803
    const/4 v14, 0x1

    .line 807
    :cond_2
    const/4 v13, 0x0

    .line 808
    .local v13, "isHexEntity":Z
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_4

    aget-char v21, v5, v15

    const/16 v22, 0x78

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    aget-char v21, v5, v15

    const/16 v22, 0x58

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 809
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 810
    const/4 v13, 0x1

    .line 814
    :cond_4
    :goto_2
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_5

    .line 815
    aget-char v4, v5, v15

    .line 816
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    .line 817
    .local v12, "isDigit":Z
    if-eqz v14, :cond_d

    .line 819
    if-nez v13, :cond_c

    if-nez v12, :cond_c

    .line 833
    .end local v4    # "ch":C
    .end local v12    # "isDigit":Z
    :cond_5
    const/16 v20, 0x0

    .line 834
    .local v20, "replaced":Z
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v15, v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_a

    aget-char v21, v5, v15

    const/16 v22, 0x3b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 836
    :cond_7
    add-int/lit8 v21, v9, 0x2

    array-length v0, v5

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 838
    const-wide/16 v6, 0x0

    .line 839
    .local v6, "charcode":J
    add-int/lit8 v21, v9, 0x2

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 840
    .restart local v4    # "ch":C
    if-eqz v13, :cond_f

    .line 841
    new-instance v21, Ljava/lang/String;

    add-int/lit8 v22, v9, 0x3

    sub-int v23, v15, v9

    add-int/lit8 v23, v23, -0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 845
    :cond_8
    :goto_3
    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_9

    const-wide/32 v22, 0x10000

    cmp-long v21, v6, v22

    if-gez v21, :cond_9

    .line 846
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "pos":I
    .restart local v18    # "pos":I
    long-to-int v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    :try_start_1
    aput-char v21, v8, v17
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 847
    const/16 v20, 0x1

    move/from16 v17, v18

    .line 861
    .end local v4    # "ch":C
    .end local v6    # "charcode":J
    .end local v18    # "pos":I
    .restart local v17    # "pos":I
    :cond_9
    :goto_4
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_a

    aget-char v21, v5, v15

    const/16 v22, 0x3b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 862
    add-int/lit8 v15, v15, 0x1

    .line 866
    :cond_a
    if-nez v20, :cond_b

    .line 868
    sub-int v21, v15, v9

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v5, v9, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    sub-int v21, v15, v9

    add-int v17, v17, v21

    .line 871
    :cond_b
    move v9, v15

    .line 872
    goto/16 :goto_1

    .line 823
    .end local v20    # "replaced":Z
    .restart local v4    # "ch":C
    .restart local v12    # "isDigit":Z
    :cond_c
    if-eqz v13, :cond_d

    if-nez v12, :cond_d

    sget-object v21, Lcom/google/common/base/StringUtil;->HEX_LETTER:Lcom/google/common/base/CharMatcher;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 828
    :cond_d
    if-nez v12, :cond_e

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 814
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 842
    .end local v12    # "isDigit":Z
    .restart local v6    # "charcode":J
    .restart local v20    # "replaced":Z
    :cond_f
    :try_start_2
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 843
    new-instance v21, Ljava/lang/String;

    add-int/lit8 v22, v9, 0x2

    sub-int v23, v15, v9

    add-int/lit8 v23, v23, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v6

    goto :goto_3

    .line 853
    .end local v4    # "ch":C
    .end local v6    # "charcode":J
    :cond_10
    new-instance v16, Ljava/lang/String;

    sub-int v21, v15, v9

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v0, v5, v9, v1}, Ljava/lang/String;-><init>([CII)V

    .line 854
    .local v16, "key":Ljava/lang/String;
    sget-object v21, Lcom/google/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Character;

    .line 855
    .local v19, "repl":Ljava/lang/Character;
    if-eqz v19, :cond_9

    .line 856
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "pos":I
    .restart local v18    # "pos":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Character;->charValue()C

    move-result v21

    aput-char v21, v8, v17

    .line 857
    const/16 v20, 0x1

    move/from16 v17, v18

    .end local v18    # "pos":I
    .restart local v17    # "pos":I
    goto :goto_4

    .line 873
    .end local v13    # "isHexEntity":Z
    .end local v14    # "isNumericEntity":Z
    .end local v15    # "j":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "repl":Ljava/lang/Character;
    .end local v20    # "replaced":Z
    :cond_11
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-direct {v0, v8, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 849
    .restart local v6    # "charcode":J
    .restart local v13    # "isHexEntity":Z
    .restart local v14    # "isNumericEntity":Z
    .restart local v15    # "j":I
    .restart local v20    # "replaced":Z
    .restart local p0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v21

    goto/16 :goto_4

    .end local v17    # "pos":I
    .restart local v4    # "ch":C
    .restart local v18    # "pos":I
    :catch_1
    move-exception v21

    move/from16 v17, v18

    .end local v18    # "pos":I
    .restart local v17    # "pos":I
    goto/16 :goto_4
.end method

.method static unicodePreservingIndex(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "index"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1707
    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1708
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1710
    add-int/lit8 p1, p1, -0x1

    .line 1713
    .end local p1    # "index":I
    :cond_0
    return p1
.end method

.method public static unicodePreservingSubstring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "begin"    # I

    .prologue
    .line 1758
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 1746
    invoke-static {p0, p1}, Lcom/google/common/base/StringUtil;->unicodePreservingIndex(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, p2}, Lcom/google/common/base/StringUtil;->unicodePreservingIndex(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
