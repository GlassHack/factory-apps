.class public Lcom/google/android/apps/lightcycle/util/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private mainMenuFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/FontUtil;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getMainMenuFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/FontUtil;->mainMenuFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/FontUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "cafenerom54.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/FontUtil;->mainMenuFont:Landroid/graphics/Typeface;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/FontUtil;->mainMenuFont:Landroid/graphics/Typeface;

    return-object v0
.end method
