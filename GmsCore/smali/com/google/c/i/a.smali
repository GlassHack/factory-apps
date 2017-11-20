.class public final Lcom/google/c/i/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/i/d;


# static fields
.field private static final a:Lcom/google/c/i/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/i/a;

    invoke-direct {v0}, Lcom/google/c/i/a;-><init>()V

    sput-object v0, Lcom/google/c/i/a;->a:Lcom/google/c/i/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/c/i/d;
    .locals 1

    sget-object v0, Lcom/google/c/i/a;->a:Lcom/google/c/i/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/c/i/c;II)V
    .locals 3

    move v1, p2

    :goto_0
    if-gt v1, p3, :cond_1

    move v0, v1

    :goto_1
    if-le v0, p2, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v0, v2}, Lcom/google/c/i/c;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v0, v2}, Lcom/google/c/i/c;->b(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
