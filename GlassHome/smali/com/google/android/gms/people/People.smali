.class public final Lcom/google/android/gms/people/People;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/People$b;,
        Lcom/google/android/gms/people/People$a;,
        Lcom/google/android/gms/people/People$BundleResult;,
        Lcom/google/android/gms/people/People$BooleanResult;,
        Lcom/google/android/gms/people/People$ReleasableResult;,
        Lcom/google/android/gms/people/People$PeopleOptions1p;
    }
.end annotation


# static fields
.field public static final API_1P:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/people/People$PeopleOptions1p;",
            ">;"
        }
    .end annotation
.end field

.field public static final AutocompleteApi:Lcom/google/android/gms/people/Autocomplete;

.field public static final CLIENT_KEY_1P:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/fc;",
            ">;"
        }
    .end annotation
.end field

.field public static final ContactsSyncApi:Lcom/google/android/gms/people/ContactsSync;

.field public static final GraphApi:Lcom/google/android/gms/people/Graph;

.field public static final GraphUpdateApi:Lcom/google/android/gms/people/GraphUpdate;

.field public static final IdentityApi:Lcom/google/android/gms/internal/eg;

.field public static final ImageApi:Lcom/google/android/gms/people/Images;

.field public static final InteractionFeedbackApi:Lcom/google/android/gms/people/InteractionFeedback;

.field public static final InternalApi:Lcom/google/android/gms/people/a;

.field static final Mf:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/fc;",
            "Lcom/google/android/gms/people/People$PeopleOptions1p;",
            ">;"
        }
    .end annotation
.end field

.field public static final NotificationApi:Lcom/google/android/gms/people/Notifications;

.field public static final STATUS_INCOMPLETE:I = 0x64

.field public static final STATUS_NOT_ALLOWED:I = 0x65

.field public static final SyncApi:Lcom/google/android/gms/people/Sync;

.field public static final TAG:Ljava/lang/String; = "PeopleClient"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->CLIENT_KEY_1P:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/people/People$1;

    invoke-direct {v0}, Lcom/google/android/gms/people/People$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->Mf:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/people/People;->Mf:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/people/People;->CLIENT_KEY_1P:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/people/People;->API_1P:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/em;

    invoke-direct {v0}, Lcom/google/android/gms/internal/em;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->IdentityApi:Lcom/google/android/gms/internal/eg;

    new-instance v0, Lcom/google/android/gms/internal/fu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fu;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->GraphApi:Lcom/google/android/gms/people/Graph;

    new-instance v0, Lcom/google/android/gms/internal/fv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fv;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->GraphUpdateApi:Lcom/google/android/gms/people/GraphUpdate;

    new-instance v0, Lcom/google/android/gms/internal/fw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fw;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->ImageApi:Lcom/google/android/gms/people/Images;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ga;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->SyncApi:Lcom/google/android/gms/people/Sync;

    new-instance v0, Lcom/google/android/gms/internal/fs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fs;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->AutocompleteApi:Lcom/google/android/gms/people/Autocomplete;

    new-instance v0, Lcom/google/android/gms/internal/fx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fx;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->InteractionFeedbackApi:Lcom/google/android/gms/people/InteractionFeedback;

    new-instance v0, Lcom/google/android/gms/internal/fy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fy;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->InternalApi:Lcom/google/android/gms/people/a;

    new-instance v0, Lcom/google/android/gms/internal/ft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ft;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->ContactsSyncApi:Lcom/google/android/gms/people/ContactsSync;

    new-instance v0, Lcom/google/android/gms/internal/fz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fz;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->NotificationApi:Lcom/google/android/gms/people/Notifications;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
