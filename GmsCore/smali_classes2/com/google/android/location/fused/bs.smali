.class final Lcom/google/android/location/fused/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/FileDescriptor;

.field final synthetic b:Ljava/io/PrintWriter;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/google/android/location/fused/bq;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/bq;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/location/fused/bs;->d:Lcom/google/android/location/fused/bq;

    iput-object p2, p0, Lcom/google/android/location/fused/bs;->a:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/google/android/location/fused/bs;->b:Ljava/io/PrintWriter;

    iput-object p4, p0, Lcom/google/android/location/fused/bs;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/location/fused/bs;->d:Lcom/google/android/location/fused/bq;

    iget-object v1, v0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/fused/bs;->d:Lcom/google/android/location/fused/bq;

    iget-object v0, v0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    iget-object v2, p0, Lcom/google/android/location/fused/bs;->a:Ljava/io/FileDescriptor;

    iget-object v3, p0, Lcom/google/android/location/fused/bs;->b:Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/google/android/location/fused/bs;->c:[Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/location/fused/ap;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 161
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
