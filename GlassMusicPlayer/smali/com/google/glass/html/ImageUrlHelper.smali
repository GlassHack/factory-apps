.class public Lcom/google/glass/html/ImageUrlHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

.field private static final INVALID_NUMBER:I = -0x1


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "^((http(s)?):)?\\/\\/((((lh[3-6]\\.((ggpht)|(googleusercontent)|(google)))|(gp[3-6]\\.((ggpht)|(googleusercontent)|(google)))|([1-4]\\.bp\\.blogspot)|(bp[0-3]\\.blogger))\\.com)|(dp[3-6]\\.googleusercontent\\.cn)|((dev|dev2|dev3|qa|qa2|qa3|qa-red|qa-blue|canary)[-.]lighthouse\\.sandbox\\.google\\.com/image)|(www\\.google\\.com\\/visualsearch\\/lh))\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/ImageUrlHelper;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/glass/html/ImageUrlHelper;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private isFifeHostedUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/google/glass/html/ImageUrlHelper;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private safeToIntMinusPrefix(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 168
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getImageDownloadParams(Ljava/lang/String;)Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 93
    new-instance v4, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;

    invoke-direct {v4}, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/google/glass/html/ImageUrlHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 97
    iput v3, v4, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->width:I

    iput v3, v4, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->height:I

    .line 98
    iput v6, v4, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->cropType:I

    .line 100
    invoke-direct {p0, p1}, Lcom/google/glass/html/ImageUrlHelper;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 159
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    move-object v0, v4

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 112
    const/4 v0, 0x0

    .line 113
    array-length v9, v8

    move v5, v6

    move v1, v7

    move v2, v7

    :goto_1
    if-ge v5, v9, :cond_4

    aget-object v10, v8, v5

    .line 114
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 113
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 136
    const-string v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 119
    :sswitch_0
    invoke-direct {p0, v10}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 123
    :sswitch_1
    invoke-direct {p0, v10}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 127
    :sswitch_2
    invoke-direct {p0, v10}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 128
    goto :goto_2

    .line 142
    :cond_4
    if-eq v2, v7, :cond_7

    if-eq v1, v7, :cond_7

    if-eqz v0, :cond_7

    .line 145
    if-gt v2, v3, :cond_5

    if-le v1, v3, :cond_6

    .line 146
    :cond_5
    int-to-float v5, v2

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 147
    if-le v2, v1, :cond_8

    .line 149
    int-to-float v1, v3

    div-float/2addr v1, v5

    float-to-int v1, v1

    move v2, v3

    .line 155
    :cond_6
    :goto_3
    iput v2, v4, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->width:I

    .line 156
    iput v1, v4, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->height:I

    .line 157
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->cropType:I

    :cond_7
    move-object v0, v4

    .line 159
    goto :goto_0

    .line 151
    :cond_8
    int-to-float v1, v3

    mul-float/2addr v1, v5

    float-to-int v2, v1

    move v1, v3

    .line 152
    goto :goto_3

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_1
        0x73 -> :sswitch_2
        0x77 -> :sswitch_0
    .end sparse-switch
.end method
