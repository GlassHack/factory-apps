.class final Lcom/google/android/apps/lightcycle/util/PanoMetadata$1;
.super Ljava/lang/Object;
.source "PanoMetadata.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/InputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata$1;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 161
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata$1;->val$filename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata$1;->val$filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v1, 0x0

    goto :goto_0
.end method
