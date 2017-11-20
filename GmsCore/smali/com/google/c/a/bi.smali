.class public abstract Lcom/google/c/a/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/a/ck;


# static fields
.field public static final a:Lcom/google/c/a/bi;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x7f

    const/16 v5, 0x1f

    const/4 v1, 0x0

    new-instance v0, Lcom/google/c/a/bj;

    invoke-direct {v0}, Lcom/google/c/a/bj;-><init>()V

    const-string v0, "CharMatcher.ASCII"

    invoke-static {v1, v6, v0}, Lcom/google/c/a/bi;->a(CCLjava/lang/String;)Lcom/google/c/a/bi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, 0x9

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/bi;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/c/a/bv;

    const-string v2, "CharMatcher.DIGIT"

    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget-object v4, Lcom/google/c/a/bi;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/c/a/bv;-><init>(Ljava/lang/String;[C[C)V

    new-instance v0, Lcom/google/c/a/bn;

    const-string v2, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v0, v2}, Lcom/google/c/a/bn;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/c/a/bo;

    const-string v2, "CharMatcher.JAVA_LETTER"

    invoke-direct {v0, v2}, Lcom/google/c/a/bo;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/c/a/bp;

    const-string v2, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v0, v2}, Lcom/google/c/a/bp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/c/a/bq;

    const-string v2, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v0, v2}, Lcom/google/c/a/bq;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/c/a/br;

    const-string v2, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v0, v2}, Lcom/google/c/a/br;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/google/c/a/bi;->a(CC)Lcom/google/c/a/bi;

    move-result-object v0

    const/16 v1, 0x9f

    invoke-static {v6, v1}, Lcom/google/c/a/bi;->a(CC)Lcom/google/c/a/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/a/bi;->a(Lcom/google/c/a/bi;)Lcom/google/c/a/bi;

    move-result-object v0

    const-string v1, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v0, v1}, Lcom/google/c/a/bi;->a(Ljava/lang/String;)Lcom/google/c/a/bi;

    new-instance v0, Lcom/google/c/a/bv;

    const-string v1, "CharMatcher.INVISIBLE"

    const-string v2, "\u0000\u007f\u00ad\u0600\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, " \u00a0\u00ad\u0604\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/c/a/bv;-><init>(Ljava/lang/String;[C[C)V

    new-instance v0, Lcom/google/c/a/bv;

    const-string v1, "CharMatcher.SINGLE_WIDTH"

    const-string v2, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/c/a/bv;-><init>(Ljava/lang/String;[C[C)V

    new-instance v0, Lcom/google/c/a/bs;

    const-string v1, "CharMatcher.ANY"

    invoke-direct {v0, v1}, Lcom/google/c/a/bs;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/c/a/bk;

    const-string v1, "CharMatcher.NONE"

    invoke-direct {v0, v1}, Lcom/google/c/a/bk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/a/bi;->a:Lcom/google/c/a/bi;

    new-instance v0, Lcom/google/c/a/bm;

    const-string v1, "CharMatcher.WHITESPACE"

    invoke-direct {v0, v1}, Lcom/google/c/a/bm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/a/bi;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/c/a/bi;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(CC)Lcom/google/c/a/bi;
    .locals 2

    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.inRange(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/c/a/bi;->b(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/c/a/bi;->b(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/c/a/bi;->a(CCLjava/lang/String;)Lcom/google/c/a/bi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(CCLjava/lang/String;)Lcom/google/c/a/bi;
    .locals 1

    new-instance v0, Lcom/google/c/a/bl;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/c/a/bl;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method private static b(C)Ljava/lang/String;
    .locals 5

    const-string v1, "0123456789ABCDEF"

    const/4 v0, 0x6

    new-array v2, v0, [C

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    rsub-int/lit8 v3, v0, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

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
.method public a(Lcom/google/c/a/bi;)Lcom/google/c/a/bi;
    .locals 2

    new-instance v1, Lcom/google/c/a/bu;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/bi;

    invoke-direct {v1, p0, v0}, Lcom/google/c/a/bu;-><init>(Lcom/google/c/a/bi;Lcom/google/c/a/bi;)V

    return-object v1
.end method

.method a(Ljava/lang/String;)Lcom/google/c/a/bi;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract a(C)Z
.end method

.method public final a(Ljava/lang/Character;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/c/a/bi;->a(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/c/a/bi;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/bi;->c:Ljava/lang/String;

    return-object v0
.end method
