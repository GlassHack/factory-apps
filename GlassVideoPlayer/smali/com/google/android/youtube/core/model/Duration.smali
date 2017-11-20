.class public final Lcom/google/android/youtube/core/model/Duration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final days:F

.field private volatile hashCode:I

.field public final hours:F

.field public final minutes:F

.field public final months:F

.field public final seconds:F

.field public final weeks:F

.field public final years:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "([+-.\\d]+[A-Z])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    .line 24
    return-void
.end method

.method public constructor <init>(FFFFFFF)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "years may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 49
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "months may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 50
    cmpl-float v0, p3, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "weeks may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 51
    cmpl-float v0, p4, v4

    if-ltz v0, :cond_3

    move v0, v1

    :goto_3
    const-string v3, "days may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 52
    cmpl-float v0, p5, v4

    if-ltz v0, :cond_4

    move v0, v1

    :goto_4
    const-string v3, "hours may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 53
    cmpl-float v0, p6, v4

    if-ltz v0, :cond_5

    move v0, v1

    :goto_5
    const-string v3, "minutes may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 54
    cmpl-float v0, p7, v4

    if-ltz v0, :cond_6

    :goto_6
    const-string v0, "seconds may not be negative"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 56
    iput p1, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    .line 57
    iput p2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    .line 58
    iput p3, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    .line 59
    iput p4, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    .line 60
    iput p5, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    .line 61
    iput p6, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    .line 62
    iput p7, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    :cond_1
    move v0, v2

    .line 49
    goto :goto_1

    :cond_2
    move v0, v2

    .line 50
    goto :goto_2

    :cond_3
    move v0, v2

    .line 51
    goto :goto_3

    :cond_4
    move v0, v2

    .line 52
    goto :goto_4

    :cond_5
    move v0, v2

    .line 53
    goto :goto_5

    :cond_6
    move v1, v2

    .line 54
    goto :goto_6
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 159
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 161
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x2c

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Duration;
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 112
    .line 120
    const-string v0, "[PT]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    array-length v0, v2

    if-le v0, v3, :cond_0

    aget-object v0, v2, v3

    .line 122
    :goto_0
    array-length v3, v2

    if-le v3, v4, :cond_1

    aget-object v1, v2, v4

    move-object v5, v1

    .line 124
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 125
    sget-object v1, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move v0, v6

    move v2, v6

    move v3, v6

    move v4, v6

    .line 126
    :goto_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    move v4, v0

    move v12, v3

    move v3, v2

    move v2, v12

    .line 140
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    sget-object v0, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move v5, v6

    move v7, v6

    .line 142
    :goto_4
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_3

    move v12, v6

    move v6, v5

    move v5, v7

    move v7, v12

    .line 154
    :goto_5
    new-instance v0, Lcom/google/android/youtube/core/model/Duration;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/model/Duration;-><init>(FFFFFFF)V

    return-object v0

    :cond_0
    move-object v0, v1

    .line 121
    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 122
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Duration;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 129
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 130
    sparse-switch v8, :sswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    move v4, v1

    .line 131
    goto :goto_2

    :sswitch_1
    move v3, v1

    .line 132
    goto :goto_2

    :sswitch_2
    move v2, v1

    .line 133
    goto :goto_2

    :sswitch_3
    move v0, v1

    .line 134
    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/Duration;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 145
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 146
    sparse-switch v9, :sswitch_data_1

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    move v7, v0

    .line 147
    goto/16 :goto_4

    :sswitch_5
    move v5, v0

    .line 148
    goto/16 :goto_4

    :sswitch_6
    move v6, v0

    .line 149
    goto/16 :goto_4

    :cond_4
    move v7, v6

    move v5, v6

    goto/16 :goto_5

    :cond_5
    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    goto/16 :goto_3

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_3
        0x4d -> :sswitch_1
        0x57 -> :sswitch_2
        0x59 -> :sswitch_0
    .end sparse-switch

    .line 146
    :sswitch_data_1
    .sparse-switch
        0x48 -> :sswitch_4
        0x4d -> :sswitch_5
        0x53 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    instance-of v2, p1, Lcom/google/android/youtube/core/model/Duration;

    if-nez v2, :cond_2

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    check-cast p1, Lcom/google/android/youtube/core/model/Duration;

    .line 74
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->years:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 75
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->months:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 76
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 77
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->days:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 78
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->hours:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 79
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 80
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->hashCode:I

    .line 86
    if-nez v0, :cond_0

    .line 88
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    float-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 95
    iput v0, p0, Lcom/google/android/youtube/core/model/Duration;->hashCode:I

    .line 97
    :cond_0
    return v0
.end method

.method public final inSeconds()J
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    .line 101
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    float-to-double v0, v0

    .line 102
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    .line 101
    add-double/2addr v0, v2

    .line 103
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    .line 101
    add-double/2addr v0, v2

    .line 104
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    float-to-double v2, v2

    mul-double/2addr v2, v8

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    .line 101
    add-double/2addr v0, v2

    .line 105
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    .line 101
    add-double/2addr v0, v2

    .line 106
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x403f000000000000L    # 31.0

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    .line 101
    add-double/2addr v0, v2

    .line 107
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    float-to-double v2, v2

    const-wide v4, 0x4076d00000000000L    # 365.0

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    .line 101
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method
