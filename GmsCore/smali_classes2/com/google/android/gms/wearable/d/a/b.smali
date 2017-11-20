.class public final Lcom/google/android/gms/wearable/d/a/b;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/android/gms/wearable/d/a/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/wearable/d/a/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 745
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 746
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    iput-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/d/a/b;->G:I

    .line 747
    return-void
.end method

.method public static b()[Lcom/google/android/gms/wearable/d/a/b;
    .locals 2

    .prologue
    .line 728
    sget-object v0, Lcom/google/android/gms/wearable/d/a/b;->c:[Lcom/google/android/gms/wearable/d/a/b;

    if-nez v0, :cond_1

    .line 729
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 731
    :try_start_0
    sget-object v0, Lcom/google/android/gms/wearable/d/a/b;->c:[Lcom/google/android/gms/wearable/d/a/b;

    if-nez v0, :cond_0

    .line 732
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/wearable/d/a/b;

    sput-object v0, Lcom/google/android/gms/wearable/d/a/b;->c:[Lcom/google/android/gms/wearable/d/a/b;

    .line 734
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    :cond_1
    sget-object v0, Lcom/google/android/gms/wearable/d/a/b;->c:[Lcom/google/android/gms/wearable/d/a/b;

    return-object v0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 808
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 809
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 811
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    if-eqz v1, :cond_0

    .line 812
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 815
    :cond_0
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/d/a/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/wearable/d/a/c;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/d/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 799
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    if-eqz v0, :cond_0

    .line 801
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 803
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 804
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 759
    if-ne p1, p0, :cond_1

    .line 760
    const/4 v0, 0x1

    .line 782
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/wearable/d/a/b;

    if-eqz v1, :cond_0

    .line 765
    check-cast p1, Lcom/google/android/gms/wearable/d/a/b;

    .line 766
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 767
    iget-object v1, p1, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 773
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    if-nez v1, :cond_5

    .line 774
    iget-object v1, p1, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    if-nez v1, :cond_0

    .line 782
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/d/a/b;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 770
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 778
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/d/a/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 787
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 790
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 792
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/a/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 793
    return v0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/d/a/c;->hashCode()I

    move-result v1

    goto :goto_1
.end method
