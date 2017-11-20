.class public interface abstract Lcom/google/android/location/os/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "com\\.google\\.android\\.apps\\.maps\\w*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/at;->l:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public abstract A()Lcom/google/android/location/os/aw;
.end method

.method public abstract B()Lcom/google/android/location/k/f;
.end method

.method public abstract a(Ljava/lang/String;Lcom/google/android/location/collectionlib/ab;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/ay;
.end method

.method public abstract a(Ljava/util/Set;Ljava/util/Map;JLjava/lang/String;Ljava/lang/Integer;ZLcom/google/g/a/b/b/a;ZLcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
.end method

.method public abstract a(ZLjava/util/Set;Ljava/util/Map;JLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract a(II)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
.end method

.method public abstract a(Lcom/google/android/location/activity/bj;)V
.end method

.method public abstract a(Lcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)V
.end method

.method public abstract a(Lcom/google/android/location/f/bg;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

.method public abstract a(I)Z
.end method

.method public abstract a(Lcom/google/android/location/collectionlib/cb;)Z
.end method

.method public abstract a(Lcom/google/android/location/os/av;Ljava/lang/Object;)Z
.end method

.method public abstract a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;ILjava/lang/String;)Z
.end method

.method public abstract b()V
.end method

.method public abstract b(J)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()Lcom/google/android/location/k/b;
.end method

.method public abstract d()Lcom/google/android/location/k/d;
.end method

.method public abstract e()Lcom/google/android/location/k/e;
.end method

.method public abstract f()Lcom/google/android/location/k/j;
.end method

.method public abstract g()Lcom/google/android/location/os/ax;
.end method

.method public abstract h()Z
.end method

.method public abstract i()Lcom/google/android/location/os/ah;
.end method

.method public abstract j()Lcom/google/android/location/os/au;
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()Z
.end method

.method public abstract n()Ljava/io/File;
.end method

.method public abstract o()Ljava/io/File;
.end method

.method public abstract p()Ljava/io/File;
.end method

.method public abstract q()I
.end method

.method public abstract r()I
.end method

.method public abstract s()Z
.end method

.method public abstract t()J
.end method

.method public abstract u()Z
.end method

.method public abstract v()Lcom/google/android/location/os/e;
.end method

.method public abstract w()Lcom/google/android/location/activity/az;
.end method

.method public abstract x()Lcom/google/android/location/activity/bt;
.end method

.method public abstract y()Z
.end method

.method public abstract z()V
.end method
