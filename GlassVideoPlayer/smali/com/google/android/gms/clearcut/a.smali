.class public final Lcom/google/android/gms/clearcut/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/c;

.field public static final b:Lcom/google/android/gms/common/api/b;

.field public static final c:Lcom/google/android/gms/common/api/a;

.field public static final d:Lcom/google/android/gms/clearcut/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->a:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/clearcut/b;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->b:Lcom/google/android/gms/common/api/b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/clearcut/a;->b:Lcom/google/android/gms/common/api/b;

    sget-object v2, Lcom/google/android/gms/clearcut/a;->a:Lcom/google/android/gms/common/api/c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/e;)V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->c:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->d:Lcom/google/android/gms/clearcut/d;

    return-void
.end method
