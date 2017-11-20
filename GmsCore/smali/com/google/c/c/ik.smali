.class final Lcom/google/c/c/ik;
.super Lcom/google/c/c/ff;


# static fields
.field static final b:Lcom/google/c/c/ik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/c/ik;

    invoke-direct {v0}, Lcom/google/c/c/ik;-><init>()V

    sput-object v0, Lcom/google/c/c/ik;->b:Lcom/google/c/c/ik;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/c/c/es;->a()Lcom/google/c/c/es;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/c/c/ff;-><init>(Lcom/google/c/c/es;ILjava/util/Comparator;)V

    return-void
.end method
