.class public final Lcom/google/android/gms/wearable/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/wearable/d;

.field public static final b:Lcom/google/android/gms/wearable/o;

.field public static final c:Lcom/google/android/gms/wearable/t;

.field public static final d:Lcom/google/android/gms/wearable/b;

.field public static final e:Lcom/google/android/gms/common/api/d;

.field public static final f:Lcom/google/android/gms/common/api/a;

.field private static final g:Lcom/google/android/gms/common/api/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/wearable/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/y;->a:Lcom/google/android/gms/wearable/d;

    .line 26
    new-instance v0, Lcom/google/android/gms/wearable/internal/al;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/al;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/y;->b:Lcom/google/android/gms/wearable/o;

    .line 27
    new-instance v0, Lcom/google/android/gms/wearable/internal/ap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ap;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/y;->c:Lcom/google/android/gms/wearable/t;

    .line 31
    new-instance v0, Lcom/google/android/gms/wearable/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/y;->d:Lcom/google/android/gms/wearable/b;

    .line 51
    new-instance v0, Lcom/google/android/gms/common/api/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/y;->e:Lcom/google/android/gms/common/api/d;

    .line 55
    new-instance v0, Lcom/google/android/gms/wearable/z;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/y;->g:Lcom/google/android/gms/common/api/c;

    .line 77
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/wearable/y;->g:Lcom/google/android/gms/common/api/c;

    sget-object v2, Lcom/google/android/gms/wearable/y;->e:Lcom/google/android/gms/common/api/d;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/ac;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/d;[Lcom/google/android/gms/common/api/ac;)V

    sput-object v0, Lcom/google/android/gms/wearable/y;->f:Lcom/google/android/gms/common/api/a;

    return-void
.end method
