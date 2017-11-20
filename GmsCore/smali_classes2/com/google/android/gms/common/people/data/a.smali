.class public final Lcom/google/android/gms/common/people/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/people/data/Audience;


# instance fields
.field private b:Ljava/util/List;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/a;->a()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/people/data/a;->a:Lcom/google/android/gms/common/people/data/Audience;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/data/a;->b:Ljava/util/List;

    .line 38
    iput v1, p0, Lcom/google/android/gms/common/people/data/a;->c:I

    .line 39
    iput-boolean v1, p0, Lcom/google/android/gms/common/people/data/a;->d:Z

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/people/data/Audience;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/gms/common/people/data/Audience;

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/a;->b:Ljava/util/List;

    iget v2, p0, Lcom/google/android/gms/common/people/data/a;->c:I

    iget-boolean v3, p0, Lcom/google/android/gms/common/people/data/a;->d:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/people/data/Audience;-><init>(Ljava/util/List;IZ)V

    return-object v0
.end method

.method public final a(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/a;
    .locals 2

    .prologue
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    const-string v0, "Audience members must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/data/a;->b:Ljava/util/List;

    .line 61
    return-object p0
.end method
