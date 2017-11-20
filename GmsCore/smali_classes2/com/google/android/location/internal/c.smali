.class final Lcom/google/android/location/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/x;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/google/android/location/internal/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/b;Lcom/google/android/gms/common/internal/x;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/location/internal/c;->e:Lcom/google/android/location/internal/b;

    iput-object p2, p0, Lcom/google/android/location/internal/c;->a:Lcom/google/android/gms/common/internal/x;

    iput-object p3, p0, Lcom/google/android/location/internal/c;->b:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/location/internal/c;->c:I

    iput p5, p0, Lcom/google/android/location/internal/c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/location/internal/c;->e:Lcom/google/android/location/internal/b;

    iget-object v0, v0, Lcom/google/android/location/internal/b;->a:Lcom/google/android/location/internal/GoogleLocationManagerService;

    iget-object v1, p0, Lcom/google/android/location/internal/c;->a:Lcom/google/android/gms/common/internal/x;

    iget-object v2, p0, Lcom/google/android/location/internal/c;->b:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/location/internal/c;->c:I

    iget v4, p0, Lcom/google/android/location/internal/c;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/location/internal/GoogleLocationManagerService;->a(Lcom/google/android/location/internal/GoogleLocationManagerService;Lcom/google/android/gms/common/internal/x;Ljava/lang/String;II)V

    .line 207
    return-void
.end method
