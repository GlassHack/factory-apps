.class public abstract Lcom/google/android/gms/fitness/sensors/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/a;


# instance fields
.field protected final a:Lcom/google/android/gms/fitness/sensors/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/b/c;->a:Lcom/google/android/gms/fitness/sensors/a;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/c;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/c;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/sensors/a;->a()V

    .line 29
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/c;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/sensors/a;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/c;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/c;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/c;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/c;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
