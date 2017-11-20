.class public final Lcom/google/android/gms/common/analytics/a/f;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/google/android/gms/common/analytics/a/f;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1124
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1125
    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->e:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/analytics/a/f;->G:I

    .line 1126
    return-void
.end method

.method public static b()[Lcom/google/android/gms/common/analytics/a/f;
    .locals 2

    .prologue
    .line 1098
    sget-object v0, Lcom/google/android/gms/common/analytics/a/f;->f:[Lcom/google/android/gms/common/analytics/a/f;

    if-nez v0, :cond_1

    .line 1099
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1101
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/analytics/a/f;->f:[Lcom/google/android/gms/common/analytics/a/f;

    if-nez v0, :cond_0

    .line 1102
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/analytics/a/f;

    sput-object v0, Lcom/google/android/gms/common/analytics/a/f;->f:[Lcom/google/android/gms/common/analytics/a/f;

    .line 1104
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :cond_1
    sget-object v0, Lcom/google/android/gms/common/analytics/a/f;->f:[Lcom/google/android/gms/common/analytics/a/f;

    return-object v0

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1161
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1162
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1163
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/f;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1166
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1167
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1170
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1171
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/f;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1174
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1175
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/f;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1178
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1179
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1182
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1070
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->e:Ljava/lang/Integer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1142
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1145
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1148
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1150
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1151
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1153
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/f;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1154
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1156
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1157
    return-void
.end method
