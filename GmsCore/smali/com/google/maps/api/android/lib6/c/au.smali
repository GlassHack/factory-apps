.class final Lcom/google/maps/api/android/lib6/c/au;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private a:I

.field private synthetic b:Lcom/google/maps/api/android/lib6/c/at;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/at;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/at;->a(Lcom/google/maps/api/android/lib6/c/at;)Lcom/google/maps/api/android/lib6/c/av;

    move-result-object v0

    sget-object v2, Lcom/google/n/c/a/a/h;->c:Lcom/google/g/a/b/b/h;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/c/av;->a(Lcom/google/g/a/b/b/h;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v2

    iput v2, p0, Lcom/google/maps/api/android/lib6/c/au;->a:I

    invoke-static {p1, v0}, Lcom/google/g/a/b/b/j;->a(Ljava/io/DataOutput;Lcom/google/g/a/b/b/f;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x1

    sget-object v0, Lcom/google/n/c/a/a/h;->e:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    const-string v0, "This application has been blocked by the Google Maps API. This might be because of an incorrectly registered key."

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/at;->b(Lcom/google/maps/api/android/lib6/c/at;)Lcom/google/maps/api/android/lib6/b/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/o;->j()V

    goto :goto_0

    :pswitch_2
    const-string v0, "This application has exceeded its quota for the Google Maps API."

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/at;->b(Lcom/google/maps/api/android/lib6/c/at;)Lcom/google/maps/api/android/lib6/b/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/o;->j()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/at;->a(Lcom/google/maps/api/android/lib6/c/at;)Lcom/google/maps/api/android/lib6/c/av;

    move-result-object v0

    sget-object v2, Lcom/google/n/c/a/a/h;->c:Lcom/google/g/a/b/b/h;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/c/av;->a(Lcom/google/g/a/b/b/h;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/au;->a:I

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/c/at;->a(Lcom/google/g/a/b/b/f;I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/at;->a(Lcom/google/maps/api/android/lib6/c/at;)Lcom/google/maps/api/android/lib6/c/av;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/c/av;->a(Lcom/google/g/a/b/b/f;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/au;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/at;->c(Lcom/google/maps/api/android/lib6/c/at;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/c/au;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/au;->b:Lcom/google/maps/api/android/lib6/c/at;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/at;->c(Lcom/google/maps/api/android/lib6/c/at;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x93

    return v0
.end method
