.class public abstract Lcom/google/android/d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/d/a/d;

.field public static final b:Lcom/google/android/d/a/d;

.field public static final c:Lcom/google/android/d/a/d;

.field public static final d:Lcom/google/android/d/a/d;

.field public static final e:Lcom/google/android/d/a/d;

.field public static final f:Lcom/google/android/d/a/d;

.field public static final g:Lcom/google/android/d/a/d;

.field public static final h:Lcom/google/android/d/a/d;

.field public static final i:Lcom/google/android/d/a/d;

.field public static final j:Lcom/google/android/d/a/d;

.field public static final k:Lcom/google/android/d/a/d;

.field public static final l:Lcom/google/android/d/a/d;

.field public static final m:Lcom/google/android/d/a/d;

.field public static final n:Lcom/google/android/d/a/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:Lcom/google/android/d/a/d;

.field public static final p:Lcom/google/android/d/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x600

    const/16 v9, 0x20

    const/16 v8, 0x7f

    const/16 v7, 0x2000

    const/4 v1, 0x0

    .line 68
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v0}, Lcom/google/android/d/a/d;->a(Ljava/lang/CharSequence;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x200a

    invoke-static {v7, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/d/a/d;->a:Lcom/google/android/d/a/d;

    .line 80
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lcom/google/android/d/a/d;->a(Ljava/lang/CharSequence;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200a

    invoke-static {v2, v3}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/d/a/d;->b:Lcom/google/android/d/a/d;

    .line 89
    invoke-static {v1, v8}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/d/a/d;->c:Lcom/google/android/d/a/d;

    .line 98
    const/16 v0, 0x30

    const/16 v2, 0x39

    invoke-static {v0, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v0

    .line 99
    const-string v2, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-char v5, v3, v0

    .line 104
    add-int/lit8 v6, v5, 0x9

    int-to-char v6, v6

    invoke-static {v5, v6}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    sput-object v2, Lcom/google/android/d/a/d;->d:Lcom/google/android/d/a/d;

    .line 115
    const/16 v0, 0x9

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x1c

    invoke-static {v2, v9}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x1680

    invoke-static {v2}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x180e

    invoke-static {v2}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200b

    invoke-static {v2, v3}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x2029

    invoke-static {v2, v3}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x205f

    invoke-static {v2}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/d/a/d;->e:Lcom/google/android/d/a/d;

    .line 131
    new-instance v0, Lcom/google/android/d/a/e;

    invoke-direct {v0}, Lcom/google/android/d/a/e;-><init>()V

    sput-object v0, Lcom/google/android/d/a/d;->f:Lcom/google/android/d/a/d;

    .line 143
    new-instance v0, Lcom/google/android/d/a/j;

    invoke-direct {v0}, Lcom/google/android/d/a/j;-><init>()V

    sput-object v0, Lcom/google/android/d/a/d;->g:Lcom/google/android/d/a/d;

    .line 153
    new-instance v0, Lcom/google/android/d/a/k;

    invoke-direct {v0}, Lcom/google/android/d/a/k;-><init>()V

    sput-object v0, Lcom/google/android/d/a/d;->h:Lcom/google/android/d/a/d;

    .line 163
    new-instance v0, Lcom/google/android/d/a/l;

    invoke-direct {v0}, Lcom/google/android/d/a/l;-><init>()V

    sput-object v0, Lcom/google/android/d/a/d;->i:Lcom/google/android/d/a/d;

    .line 173
    new-instance v0, Lcom/google/android/d/a/m;

    invoke-direct {v0}, Lcom/google/android/d/a/m;-><init>()V

    sput-object v0, Lcom/google/android/d/a/d;->j:Lcom/google/android/d/a/d;

    .line 183
    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v8, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/d/a/d;->k:Lcom/google/android/d/a/d;

    .line 192
    invoke-static {v1, v9}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v8, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0xad

    invoke-static {v2}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x603

    invoke-static {v10, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const-string v2, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v2}, Lcom/google/android/d/a/d;->a(Ljava/lang/CharSequence;)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x200f

    invoke-static {v7, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x202f

    invoke-static {v2, v3}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x205f

    const/16 v3, 0x2064

    invoke-static {v2, v3}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-static {v2, v3}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const v2, 0xd800

    const v3, 0xf8ff

    invoke-static {v2, v3}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const-string v2, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v2}, Lcom/google/android/d/a/d;->a(Ljava/lang/CharSequence;)Lcom/google/android/d/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/d/a/d;->l:Lcom/google/android/d/a/d;

    .line 213
    const/16 v0, 0x4f9

    invoke-static {v1, v0}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v10, v1}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lcom/google/android/d/a/d;->a(CC)Lcom/google/android/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/d/a/d;->m:Lcom/google/android/d/a/d;

    .line 237
    const-string v0, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {v0}, Lcom/google/android/d/a/d;->a(Ljava/lang/CharSequence;)Lcom/google/android/d/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/d/a/d;->a()Lcom/google/android/d/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/d/a/d;->n:Lcom/google/android/d/a/d;

    .line 242
    new-instance v0, Lcom/google/android/d/a/n;

    invoke-direct {v0}, Lcom/google/android/d/a/n;-><init>()V

    sput-object v0, Lcom/google/android/d/a/d;->o:Lcom/google/android/d/a/d;

    .line 309
    new-instance v0, Lcom/google/android/d/a/o;

    invoke-direct {v0}, Lcom/google/android/d/a/o;-><init>()V

    sput-object v0, Lcom/google/android/d/a/d;->p:Lcom/google/android/d/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    return-void
.end method

.method public static a(C)Lcom/google/android/d/a/d;
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/google/android/d/a/p;

    invoke-direct {v0, p0}, Lcom/google/android/d/a/p;-><init>(C)V

    return-object v0
.end method

.method private static a(CC)Lcom/google/android/d/a/d;
    .locals 1

    .prologue
    .line 490
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/d/a/x;->a(Z)V

    .line 491
    new-instance v0, Lcom/google/android/d/a/h;

    invoke-direct {v0, p0, p1}, Lcom/google/android/d/a/h;-><init>(CC)V

    return-object v0

    .line 490
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/google/android/d/a/d;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 436
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 458
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 459
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 461
    new-instance v0, Lcom/google/android/d/a/g;

    invoke-direct {v0, v1}, Lcom/google/android/d/a/g;-><init>([C)V

    :goto_0
    return-object v0

    .line 438
    :pswitch_0
    sget-object v0, Lcom/google/android/d/a/d;->p:Lcom/google/android/d/a/d;

    goto :goto_0

    .line 440
    :pswitch_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/android/d/a/d;->a(C)Lcom/google/android/d/a/d;

    move-result-object v0

    goto :goto_0

    .line 442
    :pswitch_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 443
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 444
    new-instance v0, Lcom/google/android/d/a/f;

    invoke-direct {v0, v1, v2}, Lcom/google/android/d/a/f;-><init>(CC)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/google/android/d/a/d;
    .locals 1

    .prologue
    .line 643
    invoke-static {p0}, Lcom/google/android/d/a/v;->a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;
    .locals 4

    .prologue
    .line 599
    new-instance v1, Lcom/google/android/d/a/r;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/android/d/a/d;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/d/a/d;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/d/a/r;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected a(Lcom/google/android/d/a/q;)V
    .locals 3

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 686
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/d/a/d;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {p1, v0}, Lcom/google/android/d/a/q;->a(C)V

    .line 689
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    const v2, 0xffff

    if-ne v0, v2, :cond_1

    .line 690
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final b()Lcom/google/android/d/a/d;
    .locals 2

    .prologue
    .line 659
    new-instance v0, Lcom/google/android/d/a/q;

    invoke-direct {v0}, Lcom/google/android/d/a/q;-><init>()V

    .line 660
    invoke-virtual {p0, v0}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/q;)V

    .line 662
    new-instance v1, Lcom/google/android/d/a/i;

    invoke-direct {v1, p0, v0}, Lcom/google/android/d/a/i;-><init>(Lcom/google/android/d/a/d;Lcom/google/android/d/a/q;)V

    return-object v1
.end method

.method public abstract b(C)Z
.end method

.method public b(Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    .line 728
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 729
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/d/a/d;->b(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 733
    :goto_1
    return v0

    .line 728
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 733
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
