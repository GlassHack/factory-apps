.class public abstract Lcom/google/common/base/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;


# static fields
.field public static final a:Lcom/google/common/base/c;

.field public static final b:Lcom/google/common/base/c;

.field public static final c:Lcom/google/common/base/c;

.field public static final d:Lcom/google/common/base/c;

.field public static final e:Lcom/google/common/base/c;

.field public static final f:Lcom/google/common/base/c;

.field public static final g:Lcom/google/common/base/c;

.field public static final h:Lcom/google/common/base/c;

.field public static final i:Lcom/google/common/base/c;

.field public static final j:Lcom/google/common/base/c;

.field public static final k:Lcom/google/common/base/c;

.field public static final l:Lcom/google/common/base/c;

.field public static final m:Lcom/google/common/base/c;

.field public static final o:Lcom/google/common/base/c;

.field private static final p:Ljava/lang/String;


# instance fields
.field final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x7f

    const/4 v1, 0x0

    .line 67
    new-instance v0, Lcom/google/common/base/d;

    invoke-direct {v0}, Lcom/google/common/base/d;-><init>()V

    sput-object v0, Lcom/google/common/base/c;->a:Lcom/google/common/base/c;

    .line 101
    const-string v0, "CharMatcher.ASCII"

    invoke-static {v1, v5, v0}, Lcom/google/common/base/c;->a(CCLjava/lang/String;)Lcom/google/common/base/c;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/c;->b:Lcom/google/common/base/c;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 140
    :goto_0
    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 141
    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, 0x9

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/c;->p:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/google/common/base/s;

    const-string v2, "CharMatcher.DIGIT"

    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget-object v4, Lcom/google/common/base/c;->p:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/common/base/s;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/common/base/c;->c:Lcom/google/common/base/c;

    .line 157
    new-instance v0, Lcom/google/common/base/i;

    const-string v2, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v0, v2}, Lcom/google/common/base/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/c;->d:Lcom/google/common/base/c;

    .line 169
    new-instance v0, Lcom/google/common/base/j;

    const-string v2, "CharMatcher.JAVA_LETTER"

    invoke-direct {v0, v2}, Lcom/google/common/base/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/c;->e:Lcom/google/common/base/c;

    .line 180
    new-instance v0, Lcom/google/common/base/k;

    const-string v2, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v0, v2}, Lcom/google/common/base/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/c;->f:Lcom/google/common/base/c;

    .line 192
    new-instance v0, Lcom/google/common/base/l;

    const-string v2, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v0, v2}, Lcom/google/common/base/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/c;->g:Lcom/google/common/base/c;

    .line 203
    new-instance v0, Lcom/google/common/base/m;

    const-string v2, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v0, v2}, Lcom/google/common/base/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/c;->h:Lcom/google/common/base/c;

    .line 214
    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/google/common/base/c;->a(CC)Lcom/google/common/base/c;

    move-result-object v0

    const/16 v1, 0x9f

    invoke-static {v5, v1}, Lcom/google/common/base/c;->a(CC)Lcom/google/common/base/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/c;->a(Lcom/google/common/base/c;)Lcom/google/common/base/c;

    move-result-object v0

    const-string v1, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v0, v1}, Lcom/google/common/base/c;->a(Ljava/lang/String;)Lcom/google/common/base/c;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/c;->i:Lcom/google/common/base/c;

    .line 222
    new-instance v0, Lcom/google/common/base/s;

    const-string v1, "CharMatcher.INVISIBLE"

    const-string v2, "\u0000\u007f\u00ad\u0600\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, " \u00a0\u00ad\u0604\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/s;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/common/base/c;->j:Lcom/google/common/base/c;

    .line 247
    new-instance v0, Lcom/google/common/base/s;

    const-string v1, "CharMatcher.SINGLE_WIDTH"

    const-string v2, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/s;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/common/base/c;->k:Lcom/google/common/base/c;

    .line 252
    new-instance v0, Lcom/google/common/base/n;

    const-string v1, "CharMatcher.ANY"

    invoke-direct {v0, v1}, Lcom/google/common/base/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/c;->l:Lcom/google/common/base/c;

    .line 342
    new-instance v0, Lcom/google/common/base/o;

    const-string v1, "CharMatcher.NONE"

    invoke-direct {v0, v1}, Lcom/google/common/base/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/c;->m:Lcom/google/common/base/c;

    .line 1416
    new-instance v0, Lcom/google/common/base/h;

    const-string v1, "CharMatcher.WHITESPACE"

    invoke-direct {v0, v1}, Lcom/google/common/base/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/c;->o:Lcom/google/common/base/c;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/c;->n:Ljava/lang/String;

    .line 640
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Lcom/google/common/base/c;->n:Ljava/lang/String;

    .line 632
    return-void
.end method

.method public static a(C)Lcom/google/common/base/c;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/base/c;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v1, Lcom/google/common/base/p;

    invoke-direct {v1, v0, p0}, Lcom/google/common/base/p;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method public static a(CC)Lcom/google/common/base/c;
    .locals 2

    .prologue
    .line 578
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.inRange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/base/c;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/c;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {p0, p1, v0}, Lcom/google/common/base/c;->a(CCLjava/lang/String;)Lcom/google/common/base/c;

    move-result-object v0

    return-object v0

    .line 578
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(CCLjava/lang/String;)Lcom/google/common/base/c;
    .locals 1

    .prologue
    .line 585
    new-instance v0, Lcom/google/common/base/g;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/base/g;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/google/common/base/c;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 510
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 521
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 522
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CharMatcher.anyOf(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v4, v1, v0

    .line 525
    invoke-static {v4}, Lcom/google/common/base/c;->c(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :pswitch_0
    sget-object v0, Lcom/google/common/base/c;->m:Lcom/google/common/base/c;

    .line 528
    :goto_1
    return-object v0

    .line 514
    :pswitch_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/c;->a(C)Lcom/google/common/base/c;

    move-result-object v0

    goto :goto_1

    .line 516
    :pswitch_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/base/c;->b(CC)Lcom/google/common/base/c;

    move-result-object v0

    goto :goto_1

    .line 527
    :cond_0
    const-string v0, "\")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    new-instance v0, Lcom/google/common/base/e;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/common/base/e;-><init>(Ljava/lang/String;[C)V

    goto :goto_1

    .line 510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(CC)Lcom/google/common/base/c;
    .locals 2

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.anyOf(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/base/c;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/c;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    new-instance v1, Lcom/google/common/base/f;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/common/base/f;-><init>(Ljava/lang/String;CC)V

    return-object v1
.end method

.method private static c(C)Ljava/lang/String;
    .locals 5

    .prologue
    .line 229
    const-string v1, "0123456789ABCDEF"

    .line 230
    const/4 v0, 0x6

    new-array v2, v0, [C

    fill-array-data v2, :array_0

    .line 231
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 232
    rsub-int/lit8 v3, v0, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 233
    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    nop

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 1034
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1035
    invoke-static {p2, v1}, Lcom/google/common/base/ai;->b(II)I

    move v0, p2

    .line 1036
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1037
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/c;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1041
    :goto_1
    return v0

    .line 1036
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1041
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Lcom/google/common/base/c;)Lcom/google/common/base/c;
    .locals 2

    .prologue
    .line 755
    new-instance v1, Lcom/google/common/base/r;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/c;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/r;-><init>(Lcom/google/common/base/c;Lcom/google/common/base/c;)V

    return-object v1
.end method

.method a(Ljava/lang/String;)Lcom/google/common/base/c;
    .locals 1

    .prologue
    .line 810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/Character;)Z
    .locals 1

    .prologue
    .line 1362
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/c;->b(C)Z

    move-result v0

    return v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/c;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/CharSequence;)I
    .locals 3

    .prologue
    .line 1009
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1010
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1011
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/c;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    :goto_1
    return v0

    .line 1010
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract b(C)Z
.end method

.method public c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1086
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-virtual {p0, v0}, Lcom/google/common/base/c;->b(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1088
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1110
    :goto_0
    return-object v0

    .line 1092
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1093
    const/4 v0, 0x1

    .line 1097
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1099
    :goto_2
    array-length v2, v3

    if-ne v1, v2, :cond_1

    .line 1110
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    sub-int v0, v1, v0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v2

    goto :goto_0

    .line 1102
    :cond_1
    aget-char v2, v3, v1

    invoke-virtual {p0, v2}, Lcom/google/common/base/c;->b(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1105
    :cond_2
    sub-int v2, v1, v0

    aget-char v4, v3, v1

    aput-char v4, v3, v2

    .line 1106
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/google/common/base/c;->n:Ljava/lang/String;

    return-object v0
.end method
