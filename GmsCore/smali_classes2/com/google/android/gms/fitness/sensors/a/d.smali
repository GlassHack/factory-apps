.class public final Lcom/google/android/gms/fitness/sensors/a/d;
.super Lcom/google/android/gms/fitness/sensors/c/c;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/sensors/c/c;-><init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/util/List;)V

    .line 26
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/a/d;->c:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Device;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
