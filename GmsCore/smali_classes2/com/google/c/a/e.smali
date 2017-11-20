.class public abstract Lcom/google/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/ai;


# static fields
.field public static final a:Lcom/google/c/a/e;

.field public static final b:Lcom/google/c/a/e;

.field public static final c:Lcom/google/c/a/e;

.field public static final d:Lcom/google/c/a/e;

.field public static final e:Lcom/google/c/a/e;

.field public static final f:Lcom/google/c/a/e;

.field public static final g:Lcom/google/c/a/e;

.field public static final h:Lcom/google/c/a/e;

.field public static final i:Lcom/google/c/a/e;

.field public static final j:Lcom/google/c/a/e;

.field public static final k:Lcom/google/c/a/e;

.field public static final l:Lcom/google/c/a/e;

.field public static final m:Lcom/google/c/a/e;

.field public static final n:Lcom/google/c/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v3, 0x200a

    const/16 v9, 0x600

    const/16 v8, 0x2000

    const/16 v7, 0x7f

    const/4 v1, 0x0

    .line 75
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v0}, Lcom/google/c/a/e;->a(Ljava/lang/CharSequence;)Lcom/google/c/a/e;

    move-result-object v0

    invoke-static {v8, v3}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/e;->a()Lcom/google/c/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/e;->a:Lcom/google/c/a/e;

    .line 87
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lcom/google/c/a/e;->a(Ljava/lang/CharSequence;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v8, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x2008

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/e;->a()Lcom/google/c/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/e;->b:Lcom/google/c/a/e;

    .line 96
    invoke-static {v1, v7}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/e;->c:Lcom/google/c/a/e;

    .line 105
    const/16 v0, 0x30

    const/16 v2, 0x39

    invoke-static {v0, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v0

    .line 106
    const-string v2, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-char v5, v3, v0

    .line 111
    add-int/lit8 v6, v5, 0x9

    int-to-char v6, v6

    invoke-static {v5, v6}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v2

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v2}, Lcom/google/c/a/e;->a()Lcom/google/c/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/e;->d:Lcom/google/c/a/e;

    .line 120
    new-instance v0, Lcom/google/c/a/f;

    invoke-direct {v0}, Lcom/google/c/a/f;-><init>()V

    sput-object v0, Lcom/google/c/a/e;->e:Lcom/google/c/a/e;

    .line 131
    new-instance v0, Lcom/google/c/a/k;

    invoke-direct {v0}, Lcom/google/c/a/k;-><init>()V

    sput-object v0, Lcom/google/c/a/e;->f:Lcom/google/c/a/e;

    .line 141
    new-instance v0, Lcom/google/c/a/l;

    invoke-direct {v0}, Lcom/google/c/a/l;-><init>()V

    sput-object v0, Lcom/google/c/a/e;->g:Lcom/google/c/a/e;

    .line 151
    new-instance v0, Lcom/google/c/a/m;

    invoke-direct {v0}, Lcom/google/c/a/m;-><init>()V

    sput-object v0, Lcom/google/c/a/e;->h:Lcom/google/c/a/e;

    .line 161
    new-instance v0, Lcom/google/c/a/n;

    invoke-direct {v0}, Lcom/google/c/a/n;-><init>()V

    sput-object v0, Lcom/google/c/a/e;->i:Lcom/google/c/a/e;

    .line 171
    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v7, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/e;->j:Lcom/google/c/a/e;

    .line 179
    const/16 v0, 0x20

    invoke-static {v1, v0}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v7, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0xad

    invoke-static {v2}, Lcom/google/c/a/e;->a(C)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x603

    invoke-static {v9, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const-string v2, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v2}, Lcom/google/c/a/e;->a(Ljava/lang/CharSequence;)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x200f

    invoke-static {v8, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x202f

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x205f

    const/16 v3, 0x2064

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/c/a/e;->a(C)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const v2, 0xd800

    const v3, 0xf8ff

    invoke-static {v2, v3}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const-string v2, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v2}, Lcom/google/c/a/e;->a(Ljava/lang/CharSequence;)Lcom/google/c/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/e;->a()Lcom/google/c/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/e;->k:Lcom/google/c/a/e;

    .line 201
    const/16 v0, 0x4f9

    invoke-static {v1, v0}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lcom/google/c/a/e;->a(C)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lcom/google/c/a/e;->a(C)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lcom/google/c/a/e;->a(C)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v9, v1}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lcom/google/c/a/e;->a(CC)Lcom/google/c/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/e;->a()Lcom/google/c/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/e;->l:Lcom/google/c/a/e;

    .line 217
    new-instance v0, Lcom/google/c/a/o;

    invoke-direct {v0}, Lcom/google/c/a/o;-><init>()V

    sput-object v0, Lcom/google/c/a/e;->m:Lcom/google/c/a/e;

    .line 297
    new-instance v0, Lcom/google/c/a/p;

    invoke-direct {v0}, Lcom/google/c/a/p;-><init>()V

    sput-object v0, Lcom/google/c/a/e;->n:Lcom/google/c/a/e;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)Lcom/google/c/a/e;
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/google/c/a/q;

    invoke-direct {v0, p0}, Lcom/google/c/a/q;-><init>(C)V

    return-object v0
.end method

.method private static a(CC)Lcom/google/c/a/e;
    .locals 1

    .prologue
    .line 497
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 498
    new-instance v0, Lcom/google/c/a/i;

    invoke-direct {v0, p0, p1}, Lcom/google/c/a/i;-><init>(CC)V

    return-object v0

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;)Lcom/google/c/a/e;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 465
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 466
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 468
    new-instance v0, Lcom/google/c/a/h;

    invoke-direct {v0, v1}, Lcom/google/c/a/h;-><init>([C)V

    :goto_0
    return-object v0

    .line 443
    :pswitch_0
    sget-object v0, Lcom/google/c/a/e;->n:Lcom/google/c/a/e;

    goto :goto_0

    .line 445
    :pswitch_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/c/a/e;->a(C)Lcom/google/c/a/e;

    move-result-object v0

    goto :goto_0

    .line 447
    :pswitch_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 448
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 449
    new-instance v0, Lcom/google/c/a/g;

    invoke-direct {v0, v1, v2}, Lcom/google/c/a/g;-><init>(CC)V

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 814
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 815
    invoke-static {p2, v1}, Lcom/google/c/a/ah;->a(II)I

    move v0, p2

    .line 816
    :goto_0
    if-ge v0, v1, :cond_1

    .line 817
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/c/a/e;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    :goto_1
    return v0

    .line 816
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a()Lcom/google/c/a/e;
    .locals 1

    .prologue
    .line 657
    invoke-static {p0}, Lcom/google/c/a/af;->a(Lcom/google/c/a/e;)Lcom/google/c/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/c/a/e;)Lcom/google/c/a/e;
    .locals 4

    .prologue
    .line 615
    new-instance v1, Lcom/google/c/a/s;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/c/a/e;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/e;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/c/a/s;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method a(Lcom/google/c/a/r;)V
    .locals 3

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 698
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/c/a/e;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    invoke-virtual {p1, v0}, Lcom/google/c/a/r;->a(C)V

    .line 701
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    const v2, 0xffff

    if-ne v0, v2, :cond_1

    .line 702
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Character;)Z
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/c/a/e;->b(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method final b()Lcom/google/c/a/e;
    .locals 2

    .prologue
    .line 672
    new-instance v0, Lcom/google/c/a/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/c/a/r;-><init>(B)V

    .line 673
    invoke-virtual {p0, v0}, Lcom/google/c/a/e;->a(Lcom/google/c/a/r;)V

    .line 675
    new-instance v1, Lcom/google/c/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/c/a/j;-><init>(Lcom/google/c/a/e;Lcom/google/c/a/r;)V

    return-object v1
.end method

.method public abstract b(C)Z
.end method
