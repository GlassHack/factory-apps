.class public Lcom/google/userfeedback/android/api/common/io/Gunzipper;
.super Ljava/lang/Object;
.source "Gunzipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/userfeedback/android/api/common/io/Gunzipper;


# instance fields
.field private implementation:Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/Gunzipper;-><init>()V

    sput-object v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->instance:Lcom/google/userfeedback/android/api/common/io/Gunzipper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->instance:Lcom/google/userfeedback/android/api/common/io/Gunzipper;

    iget-object v0, v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->implementation:Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper$1;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/Gunzipper$1;-><init>()V

    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->setImplementation(Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;)V

    .line 45
    :cond_0
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->instance:Lcom/google/userfeedback/android/api/common/io/Gunzipper;

    iget-object v0, v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->implementation:Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;

    invoke-interface {v0, p0}, Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static setImplementation(Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;)V
    .locals 1
    .param p0, "implementation"    # Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;

    .prologue
    .line 28
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->instance:Lcom/google/userfeedback/android/api/common/io/Gunzipper;

    iput-object p0, v0, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->implementation:Lcom/google/userfeedback/android/api/common/io/Gunzipper$GunzipInterface;

    .line 29
    return-void
.end method
