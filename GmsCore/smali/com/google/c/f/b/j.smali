.class public final Lcom/google/c/f/b/j;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/c/f/b/j;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1060
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 1061
    iput-object v0, p0, Lcom/google/c/f/b/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/j;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b/j;->G:I

    .line 1062
    return-void
.end method

.method public static b()[Lcom/google/c/f/b/j;
    .locals 2

    .prologue
    .line 1043
    sget-object v0, Lcom/google/c/f/b/j;->c:[Lcom/google/c/f/b/j;

    if-nez v0, :cond_1

    .line 1044
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1046
    :try_start_0
    sget-object v0, Lcom/google/c/f/b/j;->c:[Lcom/google/c/f/b/j;

    if-nez v0, :cond_0

    .line 1047
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/c/f/b/j;

    sput-object v0, Lcom/google/c/f/b/j;->c:[Lcom/google/c/f/b/j;

    .line 1049
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :cond_1
    sget-object v0, Lcom/google/c/f/b/j;->c:[Lcom/google/c/f/b/j;

    return-object v0

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1086
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 1087
    iget-object v1, p0, Lcom/google/c/f/b/j;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1088
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/b/j;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/google/c/f/b/j;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1092
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/c/f/b/j;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1037
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/b/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/j;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/j;->b:Ljava/lang/String;

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
    .line 1075
    iget-object v0, p0, Lcom/google/c/f/b/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1076
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/b/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/b/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1079
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/c/f/b/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1081
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 1082
    return-void
.end method
