.class public Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;
.super Ljava/lang/Object;
.source "ContentResolverInputStreamFactory.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/InputStreamFactory;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;->contentResolver:Landroid/content/ContentResolver;

    .line 32
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;->uri:Landroid/net/Uri;

    .line 33
    return-void
.end method


# virtual methods
.method public create()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/ContentResolverInputStreamFactory;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    goto :goto_0
.end method
