.class abstract enum Lcom/google/glass/note/NoteManager$Type;
.super Ljava/lang/Enum;
.source "NoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/note/NoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/note/NoteManager$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/note/NoteManager$Type;

.field public static final enum EVENT:Lcom/google/glass/note/NoteManager$Type;

.field public static final enum EVENT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

.field public static final enum HINT:Lcom/google/glass/note/NoteManager$Type;

.field public static final enum HINT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

.field public static final enum SYSTEM:Lcom/google/glass/note/NoteManager$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/glass/note/NoteManager$Type$1;

    const-string v1, "HINT"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/note/NoteManager$Type$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/note/NoteManager$Type;->HINT:Lcom/google/glass/note/NoteManager$Type;

    .line 82
    new-instance v0, Lcom/google/glass/note/NoteManager$Type$2;

    const-string v1, "HINT_DELAYED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/note/NoteManager$Type$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/note/NoteManager$Type;->HINT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

    .line 106
    new-instance v0, Lcom/google/glass/note/NoteManager$Type$3;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/note/NoteManager$Type$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/note/NoteManager$Type;->EVENT:Lcom/google/glass/note/NoteManager$Type;

    .line 116
    new-instance v0, Lcom/google/glass/note/NoteManager$Type$4;

    const-string v1, "EVENT_DELAYED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/note/NoteManager$Type$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/note/NoteManager$Type;->EVENT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

    .line 131
    new-instance v0, Lcom/google/glass/note/NoteManager$Type$5;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/note/NoteManager$Type$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/note/NoteManager$Type;->SYSTEM:Lcom/google/glass/note/NoteManager$Type;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/note/NoteManager$Type;

    sget-object v1, Lcom/google/glass/note/NoteManager$Type;->HINT:Lcom/google/glass/note/NoteManager$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/note/NoteManager$Type;->HINT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/note/NoteManager$Type;->EVENT:Lcom/google/glass/note/NoteManager$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/note/NoteManager$Type;->EVENT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/note/NoteManager$Type;->SYSTEM:Lcom/google/glass/note/NoteManager$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/note/NoteManager$Type;->$VALUES:[Lcom/google/glass/note/NoteManager$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/glass/note/NoteManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/glass/note/NoteManager$1;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/glass/note/NoteManager$Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/note/NoteManager$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/google/glass/note/NoteManager$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/note/NoteManager$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/note/NoteManager$Type;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/note/NoteManager$Type;->$VALUES:[Lcom/google/glass/note/NoteManager$Type;

    invoke-virtual {v0}, [Lcom/google/glass/note/NoteManager$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/note/NoteManager$Type;

    return-object v0
.end method


# virtual methods
.method getDelayToPost(I)J
    .locals 2
    .param p1, "timesViewed"    # I

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method abstract getDuration()J
.end method
