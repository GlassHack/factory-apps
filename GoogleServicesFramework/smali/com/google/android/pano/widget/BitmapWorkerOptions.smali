.class public Lcom/google/android/pano/widget/BitmapWorkerOptions;
.super Ljava/lang/Object;
.source "BitmapWorkerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/BitmapWorkerOptions$1;,
        Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;
    }
.end annotation


# instance fields
.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mCacheFlag:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIconResource:Landroid/content/Intent$ShortcutIconResource;

.field private mKey:Ljava/lang/String;

.field private mResourceUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/BitmapWorkerOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions$1;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/pano/widget/BitmapWorkerOptions;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/content/Intent$ShortcutIconResource;)Landroid/content/Intent$ShortcutIconResource;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p1, "x1"    # Landroid/content/Intent$ShortcutIconResource;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mResourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mResourceUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/pano/widget/BitmapWorkerOptions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/pano/widget/BitmapWorkerOptions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mHeight:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/pano/widget/BitmapWorkerOptions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mCacheFlag:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p1, "x1"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p1
.end method


# virtual methods
.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getCacheFlag()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mCacheFlag:I

    return v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mKey:Ljava/lang/String;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mKey:Ljava/lang/String;

    return-object v0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mResourceUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mHeight:I

    return v0
.end method

.method public getIconResource()Landroid/content/Intent$ShortcutIconResource;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method public getResourceUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mResourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mWidth:I

    return v0
.end method

.method public isMemCacheEnabled()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mCacheFlag:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mResourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mIconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerOptions;->mResourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
