.class public Lcom/google/glass/boutique/BoutiqueContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_APP_INSTALLED:Ljava/lang/String; = "com.google.android.glass.APP_INSTALLED"

.field public static final ACTION_GLASSWARE_STATE_CHANGED:Ljava/lang/String; = "com.google.glass.action.ACTION_GLASSWARE_STATE_CHANGED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.boutique"

.field public static final EXTRA_GLASSWARE_ENABLED:Ljava/lang/String; = "EXTRA_GLASSWARE_ENABLED"

.field public static final EXTRA_MIRROR_SOURCE_ID:Ljava/lang/String; = "EXTRA_MIRROR_SOURCE_ID"

.field public static final GLASSWARE_TABLE:Ljava/lang/String; = "glassware"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 20
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.boutique"

    .line 21
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "glassware"

    .line 22
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
