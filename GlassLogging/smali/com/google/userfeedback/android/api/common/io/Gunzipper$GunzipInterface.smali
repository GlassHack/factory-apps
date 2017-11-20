.class public interface abstract Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;
.super Ljava/lang/Object;
.source "Gunzipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/common/io/Gunzipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GunzipInterface"
.end annotation


# virtual methods
.method public abstract gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
