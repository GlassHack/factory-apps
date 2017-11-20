.class public final enum Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

.field public static final enum FLINGABLE_SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

.field public static final enum NON_SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

.field public static final enum SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;


# instance fields
.field public final enableFling:Z

.field public final enableSmoothScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    const-string v1, "NON_SCROLLING"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->NON_SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    .line 89
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    const-string v1, "SCROLLING"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    .line 90
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    const-string v1, "FLINGABLE_SCROLLING"

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->FLINGABLE_SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    sget-object v1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->NON_SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->FLINGABLE_SCROLLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->ENUM$VALUES:[Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-boolean p3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->enableFling:Z

    .line 97
    iput-boolean p4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->enableSmoothScroll:Z

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->ENUM$VALUES:[Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
