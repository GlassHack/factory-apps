.class public Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;
.super Ljava/lang/Object;
.source "ShareWithMapsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlleycatRequestAttributes"
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "maps-streetview-test.sandbox.google.com"


# instance fields
.field public authToken:Ljava/lang/String;

.field public azimuthdeg:Ljava/lang/String;

.field public capturetime:Ljava/lang/String;

.field public elevation:Ljava/lang/String;

.field public hl:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field private final output:Ljava/lang/String;

.field public photoId:Ljava/lang/String;

.field public tiltpitchdeg:Ljava/lang/String;

.field public tiltyawdeg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "ugcsubmit"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->output:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->photoId:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->lat:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->lng:Ljava/lang/String;

    .line 36
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->azimuthdeg:Ljava/lang/String;

    .line 37
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->tiltyawdeg:Ljava/lang/String;

    .line 38
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->tiltpitchdeg:Ljava/lang/String;

    .line 39
    const-string v0, "en"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->hl:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->capturetime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->lat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->lng:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "ll":Ljava/lang/String;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "maps-streetview-test.sandbox.google.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "cbk"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "output"

    const-string v4, "ugcsubmit"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "photoid"

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->photoId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ll"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "azimuthdeg"

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->azimuthdeg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "tiltyawdeg"

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->tiltyawdeg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "tiltpitchdeg"

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->tiltpitchdeg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "hl"

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->hl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "capturetime"

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->capturetime:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 63
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->elevation:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "elevation"

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->elevation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public toUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->buildUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
