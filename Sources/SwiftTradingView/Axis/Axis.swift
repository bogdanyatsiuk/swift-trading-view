import Foundation

/// Defines the core functionality for drawing axis on trading view.
///
/// This protocol outlines the methods required to draw
/// axis on trading view.
@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
public protocol Axis {
    /// Draws axis on the provided graphics context.
    ///
    /// - Parameters:
    ///   - contextInfo: Information about the graphics context and chart dimensions.
    ///   - candlesInfo: Information about the candles, including the full dataset and visible range.
    ///   - calculatedData: The data calculated by the `calculate` method.
    func draw(
        contextInfo: ContextInfo,
        candlesInfo: CandlesInfo
    )

    /// Draws only the grid lines (background layer).
    ///
    /// - Parameters:
    ///   - contextInfo: Information about the graphics context and chart dimensions.
    ///   - candlesInfo: Information about the candles, including the full dataset and visible range.
    func drawGridLines(
        contextInfo: ContextInfo,
        candlesInfo: CandlesInfo
    )

    /// Draws only the labels (foreground layer).
    ///
    /// - Parameters:
    ///   - contextInfo: Information about the graphics context and chart dimensions.
    ///   - candlesInfo: Information about the candles, including the full dataset and visible range.
    func drawLabels(
        contextInfo: ContextInfo,
        candlesInfo: CandlesInfo
    )
}

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
public extension Axis {
    /// Default empty implementation for drawGridLines.
    /// Override this method to draw only grid lines (background layer).
    func drawGridLines(
        contextInfo: ContextInfo,
        candlesInfo: CandlesInfo
    ) {
        // Default empty implementation - axis implementations can override this
    }

    /// Default empty implementation for drawLabels.
    /// Override this method to draw only labels (foreground layer).
    func drawLabels(
        contextInfo: ContextInfo,
        candlesInfo: CandlesInfo
    ) {
        // Default empty implementation - axis implementations can override this
    }
}
