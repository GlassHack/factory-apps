.class public final Lcom/google/android/location/geofencer/b/f;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/f;->a:Ljava/lang/String;

    .line 934
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/f;->b:Ljava/util/List;

    .line 987
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/geofencer/b/f;->d:I

    .line 913
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Lcom/google/android/location/geofencer/b/f;->d:I

    if-gez v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/b/f;->b()I

    .line 994
    :cond_0
    iget v0, p0, Lcom/google/android/location/geofencer/b/f;->d:I

    return v0
.end method

.method public final a(Lcom/google/android/location/geofencer/b/e;)Lcom/google/android/location/geofencer/b/f;
    .locals 1

    .prologue
    .line 951
    if-nez p1, :cond_0

    .line 952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/f;->b:Ljava/util/List;

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/f;
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/f;->c:Z

    .line 923
    iput-object p1, p0, Lcom/google/android/location/geofencer/b/f;->a:Ljava/lang/String;

    .line 924
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 910
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/f;->a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/f;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/location/geofencer/b/e;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/f;->a(Lcom/google/android/location/geofencer/b/e;)Lcom/google/android/location/geofencer/b/f;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/f;->c:Z

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/geofencer/b/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/e;

    .line 983
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 985
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 999
    const/4 v0, 0x0

    .line 1000
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/f;->c:Z

    if-eqz v1, :cond_0

    .line 1001
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/geofencer/b/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/b/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/e;

    .line 1005
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1007
    goto :goto_0

    .line 1008
    :cond_1
    iput v1, p0, Lcom/google/android/location/geofencer/b/f;->d:I

    .line 1009
    return v1
.end method
