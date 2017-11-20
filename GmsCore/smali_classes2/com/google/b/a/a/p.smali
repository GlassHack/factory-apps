.class public final Lcom/google/b/a/a/p;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/google/protobuf/a/a;

.field public c:Lcom/google/protobuf/a/a;

.field public d:Lcom/google/protobuf/a/a;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3017
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 3022
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/b/a/a/p;->a:J

    .line 3039
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/b/a/a/p;->b:Lcom/google/protobuf/a/a;

    .line 3056
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/b/a/a/p;->c:Lcom/google/protobuf/a/a;

    .line 3073
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/b/a/a/p;->d:Lcom/google/protobuf/a/a;

    .line 3117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/p;->i:I

    .line 3017
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3120
    iget v0, p0, Lcom/google/b/a/a/p;->i:I

    if-gez v0, :cond_0

    .line 3122
    invoke-virtual {p0}, Lcom/google/b/a/a/p;->b()I

    .line 3124
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/p;->i:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3014
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/b/a/a/p;->e:Z

    iput-wide v0, p0, Lcom/google/b/a/a/p;->a:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/b/a/a/p;->f:Z

    iput-object v0, p0, Lcom/google/b/a/a/p;->b:Lcom/google/protobuf/a/a;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/b/a/a/p;->g:Z

    iput-object v0, p0, Lcom/google/b/a/a/p;->c:Lcom/google/protobuf/a/a;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/b/a/a/p;->h:Z

    iput-object v0, p0, Lcom/google/b/a/a/p;->d:Lcom/google/protobuf/a/a;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 3103
    iget-boolean v0, p0, Lcom/google/b/a/a/p;->e:Z

    if-eqz v0, :cond_0

    .line 3104
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/b/a/a/p;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 3106
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/p;->f:Z

    if-eqz v0, :cond_1

    .line 3107
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/p;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 3109
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/p;->g:Z

    if-eqz v0, :cond_2

    .line 3110
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/a/p;->c:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 3112
    :cond_2
    iget-boolean v0, p0, Lcom/google/b/a/a/p;->h:Z

    if-eqz v0, :cond_3

    .line 3113
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/a/p;->d:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 3115
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 3129
    const/4 v0, 0x0

    .line 3130
    iget-boolean v1, p0, Lcom/google/b/a/a/p;->e:Z

    if-eqz v1, :cond_0

    .line 3131
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/b/a/a/p;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3134
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/p;->f:Z

    if-eqz v1, :cond_1

    .line 3135
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/a/p;->b:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3138
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/a/a/p;->g:Z

    if-eqz v1, :cond_2

    .line 3139
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/a/p;->c:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3142
    :cond_2
    iget-boolean v1, p0, Lcom/google/b/a/a/p;->h:Z

    if-eqz v1, :cond_3

    .line 3143
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/a/p;->d:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3146
    :cond_3
    iput v0, p0, Lcom/google/b/a/a/p;->i:I

    .line 3147
    return v0
.end method
