.class final enum Ldagger/internal/MembersInjectors$NoOpMembersInjector;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ldagger/b;


# static fields
.field private static final synthetic $VALUES:[Ldagger/internal/MembersInjectors$NoOpMembersInjector;

.field public static final enum INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Ldagger/internal/MembersInjectors$NoOpMembersInjector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    sget-object v1, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    aput-object v1, v0, v2

    sput-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->$VALUES:[Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldagger/internal/MembersInjectors$NoOpMembersInjector;
    .locals 1

    .prologue
    .line 40
    const-class v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method

.method public static values()[Ldagger/internal/MembersInjectors$NoOpMembersInjector;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->$VALUES:[Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    invoke-virtual {v0}, [Ldagger/internal/MembersInjectors$NoOpMembersInjector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method


# virtual methods
.method public final injectMembers(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_0
    return-void
.end method
