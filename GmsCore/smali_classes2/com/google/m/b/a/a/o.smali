.class public final Lcom/google/m/b/a/a/o;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:Z

.field public d:Lcom/google/m/b/a/a/e;

.field public e:Z

.field public f:Lcom/google/m/b/a/a/h;

.field public g:I

.field public h:Z

.field public i:Lcom/google/m/b/a/a/b;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2925
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 2930
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/m/b/a/a/o;->a:J

    .line 2947
    iput v4, p0, Lcom/google/m/b/a/a/o;->b:I

    .line 2964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/o;->m:Ljava/lang/String;

    .line 2981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/o;->o:Ljava/lang/String;

    .line 2998
    iput v3, p0, Lcom/google/m/b/a/a/o;->q:I

    .line 3015
    iput-object v2, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    .line 3035
    iput-object v2, p0, Lcom/google/m/b/a/a/o;->f:Lcom/google/m/b/a/a/h;

    .line 3055
    iput v4, p0, Lcom/google/m/b/a/a/o;->g:I

    .line 3072
    iput-object v2, p0, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    .line 3139
    iput v3, p0, Lcom/google/m/b/a/a/o;->s:I

    .line 2925
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3142
    iget v0, p0, Lcom/google/m/b/a/a/o;->s:I

    if-gez v0, :cond_0

    .line 3144
    invoke-virtual {p0}, Lcom/google/m/b/a/a/o;->b()I

    .line 3146
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/o;->s:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2922
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->j:Z

    iput-wide v0, p0, Lcom/google/m/b/a/a/o;->a:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->k:Z

    iput v0, p0, Lcom/google/m/b/a/a/o;->b:I

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/m/b/a/a/e;

    invoke-direct {v0}, Lcom/google/m/b/a/a/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->c:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->l:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/o;->m:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->n:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/o;->o:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/m/b/a/a/h;

    invoke-direct {v0}, Lcom/google/m/b/a/a/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->e:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/o;->f:Lcom/google/m/b/a/a/h;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->r:Z

    iput v0, p0, Lcom/google/m/b/a/a/o;->g:I

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/google/m/b/a/a/b;

    invoke-direct {v0}, Lcom/google/m/b/a/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->h:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/o;->p:Z

    iput v0, p0, Lcom/google/m/b/a/a/o;->q:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 3110
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->j:Z

    if-eqz v0, :cond_0

    .line 3111
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/m/b/a/a/o;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->b(IJ)V

    .line 3113
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->k:Z

    if-eqz v0, :cond_1

    .line 3114
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/m/b/a/a/o;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 3116
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->c:Z

    if-eqz v0, :cond_2

    .line 3117
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 3119
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->l:Z

    if-eqz v0, :cond_3

    .line 3120
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 3122
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->n:Z

    if-eqz v0, :cond_4

    .line 3123
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 3125
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->e:Z

    if-eqz v0, :cond_5

    .line 3126
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->f:Lcom/google/m/b/a/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 3128
    :cond_5
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->r:Z

    if-eqz v0, :cond_6

    .line 3129
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/m/b/a/a/o;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 3131
    :cond_6
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->h:Z

    if-eqz v0, :cond_7

    .line 3132
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 3134
    :cond_7
    iget-boolean v0, p0, Lcom/google/m/b/a/a/o;->p:Z

    if-eqz v0, :cond_8

    .line 3135
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/m/b/a/a/o;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 3137
    :cond_8
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 3151
    const/4 v0, 0x0

    .line 3152
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->j:Z

    if-eqz v1, :cond_0

    .line 3153
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/m/b/a/a/o;->a:J

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    .line 3156
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->k:Z

    if-eqz v1, :cond_1

    .line 3157
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/m/b/a/a/o;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3160
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->c:Z

    if-eqz v1, :cond_2

    .line 3161
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3164
    :cond_2
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->l:Z

    if-eqz v1, :cond_3

    .line 3165
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/m/b/a/a/o;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3168
    :cond_3
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->n:Z

    if-eqz v1, :cond_4

    .line 3169
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/m/b/a/a/o;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3172
    :cond_4
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->e:Z

    if-eqz v1, :cond_5

    .line 3173
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/m/b/a/a/o;->f:Lcom/google/m/b/a/a/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3176
    :cond_5
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->r:Z

    if-eqz v1, :cond_6

    .line 3177
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/m/b/a/a/o;->g:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3180
    :cond_6
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->h:Z

    if-eqz v1, :cond_7

    .line 3181
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/m/b/a/a/o;->i:Lcom/google/m/b/a/a/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3184
    :cond_7
    iget-boolean v1, p0, Lcom/google/m/b/a/a/o;->p:Z

    if-eqz v1, :cond_8

    .line 3185
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/m/b/a/a/o;->q:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3188
    :cond_8
    iput v0, p0, Lcom/google/m/b/a/a/o;->s:I

    .line 3189
    return v0
.end method
