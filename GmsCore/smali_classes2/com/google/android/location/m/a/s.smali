.class public final Lcom/google/android/location/m/a/s;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile h:[Lcom/google/android/location/m/a/s;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Lcom/google/android/location/m/a/b;

.field public d:Lcom/google/android/location/m/a/bq;

.field public e:Lcom/google/android/location/m/a/ae;

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/location/m/a/ci;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/s;->G:I

    .line 62
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/s;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/location/m/a/s;->h:[Lcom/google/android/location/m/a/s;

    if-nez v0, :cond_1

    .line 29
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/s;->h:[Lcom/google/android/location/m/a/s;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/s;

    sput-object v0, Lcom/google/android/location/m/a/s;->h:[Lcom/google/android/location/m/a/s;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/s;->h:[Lcom/google/android/location/m/a/s;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 192
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 193
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    if-eqz v1, :cond_0

    .line 198
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    if-eqz v1, :cond_1

    .line 202
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    if-eqz v1, :cond_2

    .line 206
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 210
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    if-eqz v1, :cond_4

    .line 214
    const/16 v1, 0x270f

    iget-object v2, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/s;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/b;

    invoke-direct {v0}, Lcom/google/android/location/m/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/bq;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bq;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/location/m/a/ci;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ci;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x1387a -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 171
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 172
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    if-eqz v0, :cond_2

    .line 179
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 182
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    if-eqz v0, :cond_4

    .line 185
    const/16 v0, 0x270f

    iget-object v1, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 187
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 188
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    if-ne p1, p0, :cond_1

    .line 80
    const/4 v0, 0x1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/s;

    if-eqz v1, :cond_0

    .line 85
    check-cast p1, Lcom/google/android/location/m/a/s;

    .line 86
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 87
    iget-object v1, p1, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    if-nez v1, :cond_a

    .line 94
    iget-object v1, p1, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    if-nez v1, :cond_b

    .line 101
    iget-object v1, p1, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    if-nez v1, :cond_0

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    if-nez v1, :cond_c

    .line 110
    iget-object v1, p1, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    if-nez v1, :cond_0

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_d

    .line 119
    iget-object v1, p1, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_0

    .line 127
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 128
    iget-object v1, p1, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 134
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    if-nez v1, :cond_f

    .line 135
    iget-object v1, p1, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    if-nez v1, :cond_0

    .line 143
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/s;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 97
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 105
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    iget-object v2, p1, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 114
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    iget-object v2, p1, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 123
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    iget-object v2, p1, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 131
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 139
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    iget-object v2, p1, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ci;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 151
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 157
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 159
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/s;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->c:Lcom/google/android/location/m/a/b;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/b;->hashCode()I

    move-result v0

    goto :goto_2

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->d:Lcom/google/android/location/m/a/bq;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bq;->hashCode()I

    move-result v0

    goto :goto_3

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->e:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ae;->hashCode()I

    move-result v0

    goto :goto_4

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/s;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 161
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/s;->g:Lcom/google/android/location/m/a/ci;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/ci;->hashCode()I

    move-result v1

    goto :goto_6
.end method
