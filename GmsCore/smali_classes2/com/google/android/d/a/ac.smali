.class final Lcom/google/android/d/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Set;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/d/a/ac;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 3121
    invoke-direct {p0}, Lcom/google/android/d/a/ac;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)Lcom/google/android/d/a/ac;
    .locals 2

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/google/android/d/a/ac;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3126
    return-object p0
.end method

.method final a(II)Lcom/google/android/d/a/ac;
    .locals 2

    .prologue
    .line 3130
    :goto_0
    if-gt p1, p2, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/google/android/d/a/ac;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3130
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3133
    :cond_0
    return-object p0
.end method
