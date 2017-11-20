.class public Lcom/google/glass/html/ImageUrlHelper;
.super Ljava/lang/Object;
.source "ImageUrlHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/ImageUrlHelper$FifeParam;,
        Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    }
.end annotation


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
    .param p1, "context"    # Landroid/content/Context;

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
    .param p1, "url"    # Ljava/lang/String;

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
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 168
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    :goto_0
    return v1

    .line 168
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getImageDownloadParams(Ljava/lang/String;)Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;

    invoke-direct {v5}, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;-><init>()V

    .line 94
    .local v5, "params":Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    iget-object v10, p0, Lcom/google/glass/html/ImageUrlHelper;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 95
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 97
    .local v2, "maxDimension":I
    iput v2, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->width:I

    iput v2, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->height:I

    .line 98
    const/4 v10, 0x0

    iput v10, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->cropType:I

    .line 100
    invoke-direct {p0, p1}, Lcom/google/glass/html/ImageUrlHelper;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v5

    .line 104
    :cond_1
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "pathParts":[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    .line 109
    array-length v10, v6

    add-int/lit8 v10, v10, -0x2

    aget-object v10, v6, v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "fifeParts":[Ljava/lang/String;
    const/4 v9, -0x1

    .line 111
    .local v9, "urlWidth":I
    const/4 v8, -0x1

    .line 112
    .local v8, "urlHeight":I
    const/4 v7, 0x0

    .line 113
    .local v7, "urlCropType":Ljava/lang/Integer;
    array-length v11, v1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_4

    aget-object v4, v1, v10

    .line 114
    .local v4, "p":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 113
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 117
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 136
    const-string v12, "p"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 137
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    .line 119
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v9

    .line 120
    goto :goto_2

    .line 123
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v8

    .line 124
    goto :goto_2

    .line 127
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v8

    move v9, v8

    .line 128
    goto :goto_2

    .line 142
    .end local v4    # "p":Ljava/lang/String;
    :cond_4
    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    if-eqz v7, :cond_0

    .line 145
    if-gt v9, v2, :cond_5

    if-le v8, v2, :cond_6

    .line 146
    :cond_5
    int-to-float v10, v9

    int-to-float v11, v8

    div-float v0, v10, v11

    .line 147
    .local v0, "aspectRatio":F
    if-le v9, v8, :cond_7

    .line 148
    move v9, v2

    .line 149
    int-to-float v10, v2

    div-float/2addr v10, v0

    float-to-int v8, v10

    .line 155
    .end local v0    # "aspectRatio":F
    :cond_6
    :goto_3
    iput v9, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->width:I

    .line 156
    iput v8, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->height:I

    .line 157
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->cropType:I

    goto :goto_0

    .line 151
    .restart local v0    # "aspectRatio":F
    :cond_7
    int-to-float v10, v2

    mul-float/2addr v10, v0

    float-to-int v9, v10

    .line 152
    move v8, v2

    goto :goto_3

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_1
        0x73 -> :sswitch_2
        0x77 -> :sswitch_0
    .end sparse-switch
.end method
