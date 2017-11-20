.class public interface abstract Lcom/google/android/gms/fitness/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/common/api/Status;

.field public static final c:Lcom/google/android/gms/common/api/Status;

.field public static final d:Lcom/google/android/gms/common/api/Status;

.field public static final e:Lcom/google/android/gms/common/api/Status;

.field public static final f:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x1389

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/f/d;->b:Lcom/google/android/gms/common/api/Status;

    .line 27
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x138a

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    .line 30
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x138b

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/f/d;->d:Lcom/google/android/gms/common/api/Status;

    .line 33
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x138c

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/f/d;->e:Lcom/google/android/gms/common/api/Status;

    .line 36
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x138e

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/f/d;->f:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;
.end method

.method public abstract a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;
.end method

.method public abstract a(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/f/f;
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/fitness/f/e;)Ljava/util/List;
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method public abstract a()Z
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z
.end method

.method public abstract b(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;
.end method

.method public abstract b(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z
.end method

.method public abstract c(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z
.end method

.method public abstract d(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z
.end method
