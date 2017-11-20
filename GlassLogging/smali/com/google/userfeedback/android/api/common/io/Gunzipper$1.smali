.class final Lcom/google/userfeedback/android/api/common/io/Gunzipper$1;
.super Ljava/lang/Object;
.source "Gunzipper.java"

# interfaces
.implements Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
