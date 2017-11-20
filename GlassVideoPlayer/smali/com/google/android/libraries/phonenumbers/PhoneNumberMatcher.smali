.class final Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:[Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field private final i:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

.field private final j:Ljava/lang/CharSequence;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;

.field private m:J

.field private n:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

.field private o:Lcom/google/android/libraries/phonenumbers/e;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 67
    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->b:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->c:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->d:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, ":[0-5]\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->e:Ljava/util/regex/Pattern;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    const-string v2, "/+(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "(\\([^(]*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\\.+\\p{Z}*([^.]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\\p{Z}+(\\P{Z}+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->g:[Ljava/util/regex/Pattern;

    .line 129
    const-string v2, "(\\[\uff08\uff3b"

    .line 130
    const-string v0, ")\\]\uff09\uff3d"

    .line 131
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "[^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "(?:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "])?"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "(?:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "])?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(?:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "])"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->f:Ljava/util/regex/Pattern;

    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    const/16 v1, 0x14

    .line 157
    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(II)Ljava/lang/String;

    move-result-object v4

    .line 160
    const-string v5, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    const-string v5, "\\p{Nd}"

    const/4 v6, 0x1

    invoke-static {v6, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "+\uff0b"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->h:Ljava/util/regex/Pattern;

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xd

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a:Ljava/util/regex/Pattern;

    .line 174
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private a()Lcom/google/android/libraries/phonenumbers/e;
    .locals 2

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->o:Lcom/google/android/libraries/phonenumbers/e;

    .line 714
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->o:Lcom/google/android/libraries/phonenumbers/e;

    .line 715
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    iput-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->n:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    .line 716
    return-object v0
.end method

.method private a(I)Lcom/google/android/libraries/phonenumbers/e;
    .locals 6

    .prologue
    .line 249
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 250
    :goto_0
    iget-wide v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->m:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 252
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 257
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c:Ljava/util/regex/Pattern;

    invoke-static {v3, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 259
    invoke-direct {p0, v3, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Ljava/lang/CharSequence;I)Lcom/google/android/libraries/phonenumbers/e;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 268
    :goto_1
    return-object v0

    .line 264
    :cond_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int p1, v2, v0

    .line 265
    iget-wide v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->m:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->m:J

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/CharSequence;I)Lcom/google/android/libraries/phonenumbers/e;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 316
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 321
    :cond_1
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->j:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-direct {p0, v1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->b(Ljava/lang/String;I)Lcom/google/android/libraries/phonenumbers/e;

    move-result-object v0

    .line 331
    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0, v1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Ljava/lang/String;I)Lcom/google/android/libraries/phonenumbers/e;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Lcom/google/android/libraries/phonenumbers/e;
    .locals 10

    .prologue
    .line 349
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->g:[Ljava/util/regex/Pattern;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 350
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 352
    const/4 v0, 0x1

    .line 353
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v6, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->m:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    .line 354
    if-eqz v0, :cond_1

    .line 356
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->b(Ljava/lang/String;I)Lcom/google/android/libraries/phonenumbers/e;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 375
    :goto_2
    return-object v0

    .line 363
    :cond_0
    iget-wide v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->m:J

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->m:J

    .line 364
    const/4 v0, 0x0

    .line 366
    :cond_1
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->d:Ljava/util/regex/Pattern;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 368
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    add-int/2addr v6, p2

    invoke-direct {p0, v1, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->b(Ljava/lang/String;I)Lcom/google/android/libraries/phonenumbers/e;

    move-result-object v1

    .line 369
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 370
    goto :goto_2

    .line 372
    :cond_2
    iget-wide v6, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->m:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->m:J

    goto :goto_1

    .line 349
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 375
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 280
    :cond_0
    return-object p1
.end method

.method private static a(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-ge p1, p0, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 295
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 476
    .line 477
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v0, v2, :cond_3

    .line 479
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    move v2, v0

    move v0, v1

    .line 484
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_2

    .line 487
    aget-object v3, p3, v0

    invoke-virtual {p2, v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 488
    if-gez v2, :cond_0

    .line 513
    :goto_2
    return v1

    .line 492
    :cond_0
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 493
    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 498
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 499
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 505
    aget-object v0, p3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 484
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 657
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v2, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-virtual {p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 663
    if-eqz v1, :cond_0

    .line 667
    invoke-static {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 672
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 673
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 678
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/16 v4, 0x2f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 600
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 601
    if-gez v3, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 606
    :cond_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 607
    if-ltz v4, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v2, v5, :cond_3

    :cond_2
    move v2, v1

    .line 616
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 620
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v2, v0

    .line 613
    goto :goto_1

    :cond_4
    move v0, v1

    .line 622
    goto :goto_0
.end method

.method static a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z
    .locals 6

    .prologue
    const/16 v5, 0x78

    const/16 v4, 0x58

    const/4 v1, 0x0

    .line 632
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 633
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 634
    if-eq v2, v5, :cond_0

    if-ne v2, v4, :cond_4

    .line 635
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 636
    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_3

    .line 639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 640
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v2, v3, :cond_4

    .line 651
    :cond_2
    :goto_1
    return v1

    .line 645
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/f;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 579
    invoke-static {p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 581
    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-interface {p3, p2, p0, v2, v0}, Lcom/google/android/libraries/phonenumbers/f;->a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 596
    :goto_0
    return v0

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/d;->a(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 590
    invoke-static {p2, p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-interface {p3, p2, p0, v2, v0}, Lcom/google/android/libraries/phonenumbers/f;->a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 592
    goto :goto_0

    .line 596
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 555
    if-nez p2, :cond_1

    .line 557
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 560
    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 561
    if-gez v0, :cond_0

    .line 562
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 565
    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 566
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 570
    :goto_0
    return-object v0

    .line 569
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 570
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)Lcom/google/android/libraries/phonenumbers/e;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 391
    :try_start_0
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->l:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 400
    if-lez p2, :cond_2

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->j:Ljava/lang/CharSequence;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 403
    invoke-static {v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->b(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 408
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->j:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 409
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->j:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 410
    invoke-static {v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->b(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->i:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->k:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 430
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->i:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "IL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->i:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-static {v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    if-eqz p2, :cond_0

    if-lez p2, :cond_4

    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->j:Ljava/lang/CharSequence;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_0

    .line 437
    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->l:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->i:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;->verify(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 442
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 443
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 444
    new-instance v1, Lcom/google/android/libraries/phonenumbers/e;

    invoke-direct {v1, p2, p1, v2}, Lcom/google/android/libraries/phonenumbers/e;-><init>(ILjava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private static b(C)Z
    .locals 2

    .prologue
    .line 304
    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 520
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v4

    add-int/lit8 v0, v0, -0x2

    .line 528
    :goto_0
    array-length v3, v4

    if-eq v3, v1, :cond_0

    aget-object v3, v4, v0

    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v2, v1

    .line 545
    :cond_1
    :goto_1
    return v2

    .line 523
    :cond_2
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 535
    :cond_3
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    move v7, v3

    move v3, v0

    move v0, v7

    .line 536
    :goto_2
    if-lez v0, :cond_4

    if-ltz v3, :cond_4

    .line 538
    aget-object v5, v4, v3

    aget-object v6, p3, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 537
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 545
    :cond_4
    if-ltz v3, :cond_5

    aget-object v0, v4, v3

    aget-object v3, p3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->n:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_0

    .line 695
    iget v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->p:I

    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(I)Lcom/google/android/libraries/phonenumbers/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->o:Lcom/google/android/libraries/phonenumbers/e;

    .line 696
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->o:Lcom/google/android/libraries/phonenumbers/e;

    if-nez v0, :cond_1

    .line 697
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->n:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    .line 703
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->n:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->o:Lcom/google/android/libraries/phonenumbers/e;

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/e;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->p:I

    .line 700
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->n:Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$State;

    goto :goto_0

    .line 703
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a()Lcom/google/android/libraries/phonenumbers/e;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 723
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
