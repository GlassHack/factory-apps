.class Lcom/google/android/gms/http/GoogleHttpClient$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/http/GoogleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final FG:Z

.field private final level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/http/GoogleHttpClient$b;->tag:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/http/GoogleHttpClient$b;->level:I

    iput-boolean p3, p0, Lcom/google/android/gms/http/GoogleHttpClient$b;->FG:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/google/android/gms/http/GoogleHttpClient$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/http/GoogleHttpClient$b;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/http/GoogleHttpClient$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/http/GoogleHttpClient$b;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/http/GoogleHttpClient$b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/http/GoogleHttpClient$b;->ez()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/http/GoogleHttpClient$b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/http/GoogleHttpClient$b;->eA()Z

    move-result v0

    return v0
.end method

.method private eA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/http/GoogleHttpClient$b;->FG:Z

    return v0
.end method

.method private ez()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient$b;->tag:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/http/GoogleHttpClient$b;->level:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private println(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/google/android/gms/http/GoogleHttpClient$b;->level:I

    iget-object v1, p0, Lcom/google/android/gms/http/GoogleHttpClient$b;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
