.class public final Lcom/google/h/a/b/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/t;


# static fields
.field private static final c:Lcom/google/h/a/b/b/a/b;


# instance fields
.field final a:Lcom/google/h/a/b/b/j;

.field private b:J

.field private final d:Lcom/google/h/a/b/b/a/b;

.field private final e:Lcom/google/h/a/b/b/a/b;

.field private final f:Lcom/google/h/a/b/b/a/b;

.field private final g:Lcom/google/h/a/b/b/r;

.field private h:Lcom/google/h/a/b/b/g;

.field private i:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/google/h/a/b/b/a/b;->a()Lcom/google/h/a/b/b/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/h/a/b/b/n;->c:Lcom/google/h/a/b/b/a/b;

    return-void
.end method

.method constructor <init>(Lcom/google/h/a/b/b/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x4019000000000000L    # 6.25

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/h/a/b/b/r;

    invoke-direct {v0}, Lcom/google/h/a/b/b/r;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/n;->g:Lcom/google/h/a/b/b/r;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/a/b/b/n;->i:D

    .line 124
    iput-object p1, p0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    .line 126
    new-instance v0, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v0, v2, v3}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/n;->d:Lcom/google/h/a/b/b/a/b;

    .line 127
    new-instance v0, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v0, v2, v2}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/n;->e:Lcom/google/h/a/b/b/a/b;

    .line 129
    new-instance v0, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v0, v2, v2}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/n;->f:Lcom/google/h/a/b/b/a/b;

    .line 130
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->f:Lcom/google/h/a/b/b/a/b;

    invoke-virtual {v0, v6, v6, v4, v5}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 134
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->f:Lcom/google/h/a/b/b/a/b;

    invoke-virtual {v0, v3, v3, v4, v5}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 138
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0xf

    return v0
.end method

.method public final a()Lcom/google/h/a/b/a/b;
    .locals 1

    .prologue
    .line 219
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/h/a/b/b/n;->a(I)Lcom/google/h/a/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method final a(I)Lcom/google/h/a/b/a/b;
    .locals 18

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    if-nez v2, :cond_0

    .line 227
    const/4 v2, 0x0

    .line 230
    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    invoke-interface {v2}, Lcom/google/h/a/b/b/j;->a()Lcom/google/h/a/b/b/a/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    if-nez v2, :cond_3

    :cond_1
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v10, v2

    :goto_1
    if-eqz v4, :cond_2

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, v10, v2

    if-nez v2, :cond_6

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    invoke-interface {v2}, Lcom/google/h/a/b/b/j;->b()Lcom/google/h/a/b/b/a/b;

    move-result-object v2

    if-nez v2, :cond_4

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v10, v2

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v6

    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v2

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpg-double v5, v2, v6

    if-gez v5, :cond_5

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    :cond_5
    move-wide v10, v2

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v14

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/h/a/b/b/n;->g:Lcom/google/h/a/b/b/r;

    iget-object v2, v5, Lcom/google/h/a/b/b/r;->a:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    iget-object v2, v5, Lcom/google/h/a/b/b/r;->a:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/h/a/b/a/c;

    move-object v12, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/google/h/a/b/b/g;->a(D)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    invoke-virtual {v2, v14, v15}, Lcom/google/h/a/b/b/g;->b(D)I

    move-result v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    new-instance v2, Lcom/google/h/a/b/a/b;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/h/a/b/b/n;->i:D

    move/from16 v8, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/h/a/b/a/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IFDLcom/google/h/a/b/a/c;)V

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/google/h/a/b/a/c;->e:Lcom/google/h/a/b/a/c;

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iget-object v5, v5, Lcom/google/h/a/b/b/r;->a:Ljava/util/EnumMap;

    invoke-virtual {v5}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v6, v4

    move-wide v4, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/h/a/b/b/s;

    iget-wide v8, v3, Lcom/google/h/a/b/b/s;->a:D

    sub-double/2addr v8, v14

    iget-wide v12, v3, Lcom/google/h/a/b/b/s;->b:D

    sub-double v12, v12, v16

    mul-double/2addr v8, v8

    mul-double/2addr v12, v12

    add-double/2addr v8, v12

    cmpg-double v3, v8, v4

    if-gez v3, :cond_9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/h/a/b/a/c;

    move-object v4, v2

    move-wide v2, v8

    :goto_4
    move-object v6, v4

    move-wide v4, v2

    goto :goto_3

    :cond_8
    move-object v12, v6

    goto :goto_2

    :cond_9
    move-wide v2, v4

    move-object v4, v6

    goto :goto_4
.end method

.method public final a(JFFZ)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    sget-object v1, Lcom/google/h/a/b/b/n;->c:Lcom/google/h/a/b/b/a/b;

    iget-object v2, p0, Lcom/google/h/a/b/b/n;->f:Lcom/google/h/a/b/b/a/b;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/h/a/b/b/j;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    goto :goto_0
.end method

.method public final a(JIF)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 11

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/google/h/a/b/b/n;->b:J

    .line 159
    iget-wide v0, p3, Lcom/google/h/a/b/a/b;->g:D

    iput-wide v0, p0, Lcom/google/h/a/b/b/n;->i:D

    .line 162
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    if-nez v0, :cond_3

    .line 164
    new-instance v0, Lcom/google/h/a/b/b/g;

    iget v1, p3, Lcom/google/h/a/b/a/b;->c:I

    iget v2, p3, Lcom/google/h/a/b/a/b;->d:I

    invoke-direct {v0, v1, v2}, Lcom/google/h/a/b/b/g;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    .line 165
    const/4 v0, 0x1

    move v1, v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    iget v2, p3, Lcom/google/h/a/b/a/b;->c:I

    invoke-virtual {v0, v2}, Lcom/google/h/a/b/b/g;->a(I)D

    move-result-wide v2

    .line 186
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    iget v4, p3, Lcom/google/h/a/b/a/b;->d:I

    invoke-virtual {v0, v4}, Lcom/google/h/a/b/b/g;->b(I)D

    move-result-wide v4

    .line 187
    iget-object v6, p0, Lcom/google/h/a/b/b/n;->g:Lcom/google/h/a/b/b/r;

    iget-object v7, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    iget-object v0, v6, Lcom/google/h/a/b/b/r;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/s;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/h/a/b/b/s;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/google/h/a/b/b/s;-><init>(B)V

    iget-object v6, v6, Lcom/google/h/a/b/b/r;->a:Ljava/util/EnumMap;

    invoke-virtual {v6, v7, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-wide v4, v0, Lcom/google/h/a/b/b/s;->a:D

    iput-wide v2, v0, Lcom/google/h/a/b/b/s;->b:D

    .line 188
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->d:Lcom/google/h/a/b/b/a/b;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 189
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->d:Lcom/google/h/a/b/b/a/b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 193
    iget v0, p3, Lcom/google/h/a/b/a/b;->e:I

    .line 194
    iget-object v2, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    sget-object v3, Lcom/google/h/a/b/a/c;->b:Lcom/google/h/a/b/a/c;

    if-ne v2, v3, :cond_2

    const/16 v2, 0x4e20

    if-ge v0, v2, :cond_2

    .line 195
    const/16 v0, 0x4e20

    .line 198
    :cond_2
    int-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 199
    mul-double/2addr v2, v2

    .line 200
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->e:Lcom/google/h/a/b/b/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 201
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->e:Lcom/google/h/a/b/b/a/b;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 202
    if-eqz v1, :cond_4

    .line 204
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    iget-object v1, p0, Lcom/google/h/a/b/b/n;->d:Lcom/google/h/a/b/b/a/b;

    iget-object v2, p0, Lcom/google/h/a/b/b/n;->e:Lcom/google/h/a/b/b/a/b;

    invoke-interface {v0, v1, v2}, Lcom/google/h/a/b/b/j;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 208
    :goto_0
    return-void

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    invoke-interface {v0}, Lcom/google/h/a/b/b/j;->a()Lcom/google/h/a/b/b/a/b;

    move-result-object v0

    .line 168
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v2

    .line 169
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v4

    .line 170
    iget-object v6, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/h/a/b/b/g;->a(DD)D

    move-result-wide v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 172
    iget-object v6, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    .line 173
    new-instance v7, Lcom/google/h/a/b/b/g;

    iget v8, p3, Lcom/google/h/a/b/a/b;->c:I

    iget v9, p3, Lcom/google/h/a/b/a/b;->d:I

    invoke-direct {v7, v8, v9}, Lcom/google/h/a/b/b/g;-><init>(II)V

    iput-object v7, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    .line 174
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    invoke-virtual {v9, v2, v3, v6}, Lcom/google/h/a/b/b/g;->a(DLcom/google/h/a/b/b/g;)D

    move-result-wide v2

    invoke-virtual {v0, v7, v8, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 175
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    invoke-virtual {v7, v4, v5, v6}, Lcom/google/h/a/b/b/g;->b(DLcom/google/h/a/b/b/g;)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 178
    iget-object v2, p0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    iget-object v3, p0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    invoke-interface {v3}, Lcom/google/h/a/b/b/j;->b()Lcom/google/h/a/b/b/a/b;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/google/h/a/b/b/j;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 180
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->g:Lcom/google/h/a/b/b/r;

    iget-object v2, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    iget-object v0, v0, Lcom/google/h/a/b/b/r;->a:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/s;

    iget-wide v4, v0, Lcom/google/h/a/b/b/s;->a:D

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/h/a/b/b/g;->a(DLcom/google/h/a/b/b/g;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/h/a/b/b/s;->a:D

    iget-wide v4, v0, Lcom/google/h/a/b/b/s;->b:D

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/h/a/b/b/g;->b(DLcom/google/h/a/b/b/g;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/h/a/b/b/s;->b:D

    goto :goto_1

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->a:Lcom/google/h/a/b/b/j;

    iget-object v1, p0, Lcom/google/h/a/b/b/n;->d:Lcom/google/h/a/b/b/a/b;

    sget-object v2, Lcom/google/h/a/b/b/n;->c:Lcom/google/h/a/b/b/a/b;

    iget-object v3, p0, Lcom/google/h/a/b/b/n;->e:Lcom/google/h/a/b/b/a/b;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/h/a/b/b/j;->b(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    goto/16 :goto_0
.end method

.method public final a(JLcom/google/h/a/b/b/u;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/google/h/a/b/b/n;->b:J

    return-wide v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/n;->h:Lcom/google/h/a/b/b/g;

    .line 308
    iget-object v0, p0, Lcom/google/h/a/b/b/n;->g:Lcom/google/h/a/b/b/r;

    iget-object v0, v0, Lcom/google/h/a/b/b/r;->a:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 309
    return-void
.end method
