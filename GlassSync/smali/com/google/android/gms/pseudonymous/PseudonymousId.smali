.class public final Lcom/google/android/gms/pseudonymous/PseudonymousId;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/gm;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/gm;",
            ">;"
        }
    .end annotation
.end field

.field public static final PseudonymousIdApi:Lcom/google/android/gms/pseudonymous/PseudonymousIdApi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/pseudonymous/PseudonymousId;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/pseudonymous/PseudonymousId$1;

    invoke-direct {v0}, Lcom/google/android/gms/pseudonymous/PseudonymousId$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/pseudonymous/PseudonymousId;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/pseudonymous/PseudonymousId;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/pseudonymous/PseudonymousId;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/pseudonymous/PseudonymousId;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/gl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gl;-><init>()V

    sput-object v0, Lcom/google/android/gms/pseudonymous/PseudonymousId;->PseudonymousIdApi:Lcom/google/android/gms/pseudonymous/PseudonymousIdApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
