.class public Lcom/google/android/gms/internal/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/droidguard/DroidGuardHandle;


# instance fields
.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/br;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public snapshot(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/br;->mErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
